# type: ignore
from math import nan
import pandas as pd
import argparse
from pathlib import Path
import re
from typing import Any

from .stats import generate_stats

from .bit_flip_data import parse_bit_flip_errors

from .scan_chain_architecture import (
    adjust_names,
    categorize_flip_flops,
    parse_scan_chain_architecture,
)


def print_table(statistics: dict[(str, str), dict[str, dict[str, Any]]]) -> None:
    error_types = [
        "total_error_rate",
        "wrong_result_rate",
        "control_flow_error_rate",
    ]

    ff_categories = ["gp_register_file", "pc", "isa", "pipeline", "total"]

    configs = [
        "single_cycle_rv32i",
        "2_stage_rv32i",
        "3_stage_rv32i",
        "4_stage_rv32i",
        "5_stage_rv32i",
    ]
    programs = []
    for config, program in statistics.keys():
        # if config not in configs:
        #     configs.append(config)
        if program not in programs:
            programs.append(program)

    df = pd.DataFrame(
        index=pd.MultiIndex.from_product([configs, ff_categories]),
        columns=pd.MultiIndex.from_product([programs, error_types]),
    )

    for (config, program), stats in statistics.items():
        for error_type in error_types:
            for ff_category in ff_categories:
                value = nan
                if error_type in stats[ff_category]:
                    value = stats[ff_category][error_type]
                df.at[(config, ff_category), (program, error_type)] = value

    print(df.to_markdown())


def find_scan_chain_architecture_files(output: str) -> dict[str, Path]:
    scan_chain_architectures = {}
    for dir, _, files in Path(output).walk():
        for file in files:
            if file.endswith(".json"):
                match = re.match(r".*netlists\/([^\/]+)\/?", str(dir))
                if match:
                    scan_chain_architectures[match.group(1)] = dir / file
    return scan_chain_architectures


def find_fi_logs(data: str, configs: list[str]) -> dict[(str, str), Path]:
    fi_logs = {}
    for dir, _, files in Path(data).walk():
        for file in files:
            if file.endswith(".fi"):
                for config in configs:
                    if file.startswith(f"{config}_"):
                        program = file.removeprefix(f"{config}_").removesuffix(".fi")
                        fi_logs[(config, program)] = dir / file
    return fi_logs


if __name__ == "__main__":
    parser = argparse.ArgumentParser("gen_figures")

    parser.add_argument(
        "--output",
        help="Synthesis and implementation output directory",
        type=str,
        required=True,
    )
    parser.add_argument("--data", help="Data directory", type=str, required=True)

    args = parser.parse_args()

    scan_chain_architecture_files = find_scan_chain_architecture_files(args.output)
    scan_chain_architectures = {
        config: adjust_names(parse_scan_chain_architecture(path))
        for config, path in scan_chain_architecture_files.items()
    }

    category_flip_flops = {
        config: categorize_flip_flops(scan_chain_architecture)
        for config, scan_chain_architecture in scan_chain_architectures.items()
    }

    fi_log_files = find_fi_logs(args.data, list(scan_chain_architectures.keys()))

    errors = {
        (config, program): parse_bit_flip_errors(path)[
            0 : len(scan_chain_architectures[config])
        ]
        for (config, program), path in fi_log_files.items()
    }

    statistics = {
        (config, program): generate_stats(
            scan_chain_architectures[config],
            errors[(config, program)],
            category_flip_flops[config],
        )
        for (config, program) in errors.keys()
    }

    print_table(statistics)
