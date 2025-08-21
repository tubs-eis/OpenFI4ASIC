import argparse
from typing import Self, Optional, Type
from types import TracebackType
import serial


def parse_number_list(s: str) -> list[tuple[int, int]]:
    ranges: list[tuple[int, int]] = []
    for part in s.split(";"):
        [start, end] = part.split("-")
        ranges.append((int(start), int(end)))
    return ranges


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        "OpenFI4Asic Driver",
        description="Driver to automatically load a program onto the OpenFI4ASIC Runtime and run a fault injection campaign",
    )

    parser.add_argument(
        "--device",
        "-d",
        required=True,
        help="Serial port where the fault injection runtime is running",
    )

    parser.add_argument(
        "--baud",
        "-b",
        help="Baudrate to use for connection to the fault injection runtime",
        default=115200,
    )

    parser.add_argument(
        "--program", "-p", help="Help program binary to inject faults into"
    )

    parser.add_argument(
        "--total-cycles",
        help="Number of cycles the program needs to output the correct result",
        type=int,
        required=True,
    )

    parser.add_argument(
        "--timeout-cycles",
        help="Number of cycles after which to timeout, if done was not set",
        type=int,
    )

    parser.add_argument(
        "--result-start",
        help="Decimal word address where the result starts",
        type=int,
        required=True,
    )

    parser.add_argument(
        "--result-length", help="Length of the result in words", type=int, required=True
    )

    parser.add_argument("--done-addr", help="Word address of the done flag", type=int)

    parser.add_argument("--outfile", "-o", help="Output file path", required=True)

    parser.add_argument(
        "--flip-flops", help="Which flip flops to target", type=parse_number_list
    )
    parser.add_argument(
        "--imem-bits",
        help="What bits of the imem to target (bits are numbered lsb first starting at address 0)",
        type=parse_number_list,
    )
    parser.add_argument(
        "--dmem-bits",
        help="What bits of the dmem to target (bits are numbered lsb first starting at address 0)",
        type=parse_number_list,
    )

    parser.add_argument(
        "--cycles", help="Which cycles to target", required=True, type=parse_number_list
    )

    args = parser.parse_args()

    if args.flip_flops is None and args.imem_bits is None and args.dmem_bits is None:
        parser.error(
            "At least one of --flip-flops, --imem-bits and --dmem-bits has to be specified"
        )

    return args


class FIRuntimeConnection:
    device: str
    baud: int
    ser: serial.Serial | None

    ready: bool

    def __init__(self, device: str, baud: int) -> None:
        self.device = device
        self.baud = baud
        self.ser = None

        self.ready = False

    def __enter__(self) -> Self:
        self.ser = serial.Serial(self.device, self.baud, timeout=None)
        return self

    def __exit__(
        self,
        exc_type: Optional[Type[BaseException]],
        exc_val: Optional[BaseException],
        exc_tb: Optional[TracebackType],
    ) -> None:
        if self.ser and self.ser.is_open:
            self.ser.close()
            self.ser.close()

    def send_command(self, command: str) -> str:
        if self.ser is None:
            raise Exception()

        if not self.ready:
            self.ser.read_until(b">")
            self.ready = True
        self.ser.write(command.encode())

        received = self.ser.read_until(b">")

        lines = received[0:-1].decode().splitlines()

        return "\n".join(lines[1:])

    def upload_program(self, program: bytes):
        command = f"upload_program {len(program)}\n"
        command += program.hex()

        self.send_command(command)


def load_bin_file(path: str) -> bytes:
    with open(path, "rb") as f:
        return f.read()


def main() -> None:
    args = parse_args()

    with FIRuntimeConnection(args.device, args.baud) as fi_runtime:
        fi_runtime.upload_program(load_bin_file(args.program))
        print(fi_runtime.send_command(f"set_total_cycles {args.total_cycles}\n"))
        if args.timeout_cycles is not None:
            print(
                fi_runtime.send_command(f"set_timeout_cycles {args.timeout_cycles}\n")
            )
        if args.done_addr is not None:
            print(fi_runtime.send_command(f"set_done_addr {args.done_addr}\n"))
        print(
            fi_runtime.send_command(
                f"set_result {args.result_start} {args.result_length}\n"
            )
        )
        print(fi_runtime.send_command("reference_run\n"))

        with open(args.outfile, "w") as fi_log:

            if args.flip_flops:
                for ff_start, ff_end in args.flip_flops:
                    for cycle_start, cycle_end in args.cycles:
                        print(
                            f"Injecting FFs {ff_start} - {ff_end} in cycles {cycle_start} - {cycle_end}"
                        )
                        command = f"ff_fi_run {ff_start} {ff_end} {cycle_start} {cycle_end}"
                        fi_log.write(f"# {command}\n")
                        fi_log.write(fi_runtime.send_command(f"{command}\n") + "\n")

            if args.imem_bits:
                for imem_start, imem_end in args.imem_bits:
                    for cycle_start, cycle_end in args.cycles:
                        print(
                            f"Injecting IMEM bit {imem_start} - {imem_end} in cycles {cycle_start} - {cycle_end}"
                        )
                        command = (
                            f"imem_fi_run {imem_start} {imem_end} {cycle_start} {cycle_end}"
                        )
                        fi_log.write(f"# {command}\n")
                        fi_log.write(fi_runtime.send_command(f"{command}\n") + "\n")

            if args.dmem_bits:
                for dmem_start, dmem_end in args.dmem_bits:
                    for cycle_start, cycle_end in args.cycles:
                        print(
                            f"Injecting DMEM bit {dmem_start} - {dmem_end} in cycles {cycle_start} - {cycle_end}"
                        )
                        command = (
                            f"dmem_fi_run {dmem_start} {dmem_end} {cycle_start} {cycle_end}"
                        )
                        fi_log.write(f"# {command}\n")
                        fi_log.write(fi_runtime.send_command(f"{command}\n") + "\n")




if __name__ == "__main__":
    main()
