# Perform a fault injection run using a specific program

import argparse
from dataclasses import dataclass
import json
import tomllib
from typing import Any, Self
import subprocess
import re
import os

script_path = os.path.dirname(os.path.realpath(__file__))
driver_path = f"{script_path}/../../../runtime/driver/driver.py"


@dataclass
class TestDefinition:
    name: str
    binary: str
    copy_dmem: bool
    total_cycles: int
    result_start: int
    result_length: int
    pc_reference: int
    reference: list[int]

    @classmethod
    def parse(cls, name: str, object: Any) -> Self:
        assert "binary" in object and isinstance(object["binary"], str)
        binary = object["binary"]

        assert "copy_dmem" in object and isinstance(object["copy_dmem"], bool)
        copy_dmem = object["copy_dmem"]

        assert "total_cycles" in object and isinstance(object["total_cycles"], int)
        total_cycles = object["total_cycles"]

        assert "result_start" in object and isinstance(object["result_start"], int)
        result_start = object["result_start"]

        assert "result_length" in object and isinstance(object["result_length"], int)
        result_length = object["result_length"]

        assert "pc_reference" in object and isinstance(object["pc_reference"], int)
        pc_reference = object["pc_reference"]

        assert "reference" in object and isinstance(object["reference"], list)
        reference = object["reference"]

        for reference_value in reference:
            assert (
                isinstance(reference_value, int)
                and reference_value > 0
                and reference_value < 2**32
            )
        assert len(reference) == result_length

        return cls(
            name,
            binary,
            copy_dmem,
            total_cycles,
            result_start,
            result_length,
            pc_reference,
            reference,
        )


@dataclass
class TestRunResult:
    pc: int
    result: list[int]

    @classmethod
    def extract_from_driver_output(cls, driver_output: str) -> Self:
        inside_reference = False
        reference: list[int] = []
        pc = None
        for line in driver_output.splitlines():
            if line == "REFERENCE START":
                inside_reference = True
                continue

            if line == "REFERENCE END":
                inside_reference = False
                continue

            if inside_reference:
                if line.startswith("PC: "):
                    pc = int(line.removeprefix("PC: "), 16)
                else:
                    match = re.match(r"[0-9a-fA-F]+:\s*([0-9a-fA-F]+)", line)
                    if match:
                        reference.append(int(match.group(1), 16))

        assert pc is not None

        return cls(pc, reference)


def run_test(
    test: TestDefinition, device: str, baudrate: int, override_total_cycles: int | None
) -> TestRunResult:
    if override_total_cycles is None:
        total_cycles = test.total_cycles
    else:
        total_cycles = override_total_cycles

    args: list[str] = [
        "python3",
        driver_path,
        "--device",
        device,
        "--baud",
        str(baudrate),
        "--program",
        test.binary,
        "--total-cycles",
        str(total_cycles),
        "--result-start",
        str(test.result_start),
        "--result-length",
        str(test.result_length),
        "--outfile",
        "/dev/null",
        "--flip-flops",
        "0-0",
        "--cycles",
        "0-0",
    ]

    if test.copy_dmem:
        args.append("--copy_dmem")

    run_result = subprocess.run(
        args,
        capture_output=True,
    )

    return TestRunResult.extract_from_driver_output(run_result.stdout.decode("UTF-8"))


def run_fi_run(
    test: TestDefinition,
    device: str,
    baudrate: int,
    total_cycles: int,
    ffs: str,
    cycles: str,
    outfile: str,
    logfile: str,
) -> None:
    args = [
        "python3",
        driver_path,
        "--device",
        device,
        "--baud",
        str(baudrate),
        "--program",
        test.binary,
        "--total-cycles",
        str(total_cycles),
        "--result-start",
        str(test.result_start),
        "--result-length",
        str(test.result_length),
        "--outfile",
        outfile,
        "--flip-flops",
        ffs,
        "--cycles",
        cycles,
    ]

    if test.copy_dmem:
        args.append("--copy_dmem")

    run_result = subprocess.run(
        args,
        capture_output=True,
    )

    with open(logfile, "wb") as f:
        f.write(run_result.stdout)


def check_result(test: TestDefinition, result: TestRunResult) -> tuple[bool, bool]:
    pc_mismatch = test.pc_reference != result.pc

    assert len(test.reference) == len(result.result)
    result_mismatch = test.reference != result.result

    return (not pc_mismatch, not result_mismatch)


def find_runtime(test: TestDefinition, device: str, baudrate: int) -> int:

    # Find a total_cycles value which yields a wrong result (lower bound)
    lo = test.total_cycles
    while True:
        run_result = run_test(test, device, baudrate, override_total_cycles=lo)
        if check_result(test, run_result)[1]:
            if int(lo * 0.9) < lo:
                lo = int(lo * 0.9)
            elif lo > 0:
                lo -= 1
            else:
                raise Exception(
                    "Test does not return a wrong result, even when running for 0 cycles"
                )
        else:
            break

    # Find a total_cycles value which yields a correct result (upper bound)
    hi = test.total_cycles
    while True:
        run_result = run_test(test, device, baudrate, override_total_cycles=hi)
        if not check_result(test, run_result)[1]:
            hi = int(hi * 1.1)
        else:
            break

    # Do a binary search between lo and hi to find the first total_cycles value yielding a correct result
    while hi - lo > 1:
        middle = (lo + hi) // 2
        run_result = run_test(test, device, baudrate, override_total_cycles=middle)
        if check_result(test, run_result)[1]:
            # Result is correct -> reduce upper bound
            hi = middle
        else:
            # Result is incorrect -> reduce lower bound
            lo = middle

    # Single step until first cycle at the correct final pc
    runtime = hi
    while True:
        run_result = run_test(test, device, baudrate, override_total_cycles=runtime)
        if not check_result(test, run_result)[0]:
            runtime += 1
        else:
            break

    return runtime


def get_num_flip_flops(eisv_config: str):
    scan_chain_architecture_path = (
        f"{script_path}/../netlists/{eisv_config}/scan_chain_architecture.json"
    )

    with open(scan_chain_architecture_path, "rb") as f:
        scan_chain_architecture = json.load(f)

    return len(scan_chain_architecture["scan_chains"]["0"])


def main(args: argparse.Namespace) -> None:
    with open(args.tests, "rb") as f:
        toml_tests = tomllib.load(f)["tests"]

    tests: dict[str, TestDefinition] = {}
    for name, toml_test in toml_tests.items():
        tests[name] = TestDefinition.parse(name, toml_test)

    target_test = tests[args.test]

    num_ffs = get_num_flip_flops(args.config)

    runtime = find_runtime(target_test, args.device, args.baud)

    fi_log_path = f"{script_path}/../evaluation/data/{args.config}_{args.test}.fi"
    log_path = f"{script_path}/../evaluation/data/{args.config}_{args.test}.log"

    run_fi_run(
        target_test,
        args.device,
        args.baud,
        runtime,
        f"0-{num_ffs}",
        f"0-{runtime}",
        fi_log_path,
        log_path,
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser("runme_fi_run.py")

    parser.add_argument("--tests", help="Test definition TOML file", required=True)

    parser.add_argument("--test", help="Which test definition to run", required=True)

    parser.add_argument(
        "--device", "-d", help="FPGA device to connect to", required=True
    )

    parser.add_argument("--baud", "-b", help="Baudrate", type=int, required=True)

    parser.add_argument(
        "--config", help="EIS-V config to perform run on", type=str, required=True
    )

    main(parser.parse_args())
