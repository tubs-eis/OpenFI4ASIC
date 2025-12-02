"""
Parsing and manipulating scan_chain_architecture.json files.
"""

import json
import re
from pathlib import Path


def parse_scan_chain_architecture(file: Path) -> list[str]:
    with open(file, "r") as f:
        scan_chain_architecture = json.load(f)

    scan_chain = [
        (int(index), list(flip_flop.keys())[0])
        for index, flip_flop in scan_chain_architecture["scan_chains"]["0"].items()
    ]

    scan_chain.sort(key=lambda x: x[0])

    return [name for _, name in scan_chain]


def adjust_names(scan_chain_architecture: list[str]) -> list[str]:
    # Changes indices to have leading zeros, such that they are sorted correctly
    # Example: foo_ff_reg[8][7] -> foo_ff_reg[08][07]
    def adjust_index(match: re.Match[str]) -> str:
        return f"[{int(match.group(1)):02d}]"

    def adjust_name(name: str) -> str:
        return re.sub(r"\[(\d+)\]", adjust_index, name)

    return [adjust_name(name) for name in scan_chain_architecture]


def categorize_flip_flops(scan_chain_architecture: list[str]) -> dict[str, list[int]]:
    categories = [
        "gp_register_file",
        # "csr_register_file",
        "pipeline_datapath",
        "pipeline_controlpath",
        "pc",
    ]

    category_classificaion_substrings: dict[str, list[str]] = {
        "gp_register_file": ["register_file_inst_registers_reg_reg"],
        "pipeline_datapath": [
            "rp1_data_reg_reg",
            "rp2_data_reg_reg",
            "pipeline_reg_reg[imm]",
            "de_pipeline_reg_reg[pc]",
            "de_pipeline_reg_reg[pc_offset]",
            "ex_pipeline_reg_reg[eu_result]",
            "ex_pipeline_reg_reg[operand_a]",
            "ex_pipeline_reg_reg[operand_b]",
            "ex_pipeline_reg_reg[pc]",
            "ex_pipeline_reg_reg[rp2_rdata]",
            "mem_pipeline_reg_reg[eu_result]",
            "mem_pipeline_reg_reg[operand_b]",
            "mem_pipeline_reg_reg[pc]",
            "reg_bypass_reg_reg",
            "core_inst_EX_ff_reg",
            "core_inst_ID_ff_reg",
            "core_inst_MEM_ff_reg",
        ],
        "pipeline_controlpath": [
            "ctrl_reg",
            "hazard_reg_reg[operand_a_forward_sel]",
            "hazard_reg_reg[operand_b_forward_sel]",
            "hazard_reg_reg[stall]",
            "if_bubble_reg_reg",
            "if_fetch_valid_ff_reg",
            "instr_rdata_ff_reg",
            "de_pipeline_reg_reg[rd]",
            "de_pipeline_reg_reg[rs1]",
            "de_pipeline_reg_reg[rs2]",
            "ex_pipeline_reg_reg[rd]",
            "mem_pipeline_reg_reg[rd]",
            "controller_inst",
            "core_inst_IF_ff_reg[imem_rdata]",
            "core_inst_IF_ff_reg[imem_rdata_valid]",
            "core_inst_EX_ctrl_ff_reg[memory_access]",
            "core_inst_EX_ctrl_ff_reg[memory_store]",
            "core_inst_EX_ctrl_ff_reg[memory_unsigned]",
            "core_inst_EX_ctrl_ff_reg[memory_width]",
            "core_inst_EX_ctrl_ff_reg[rf_wp1_enable]",
            "core_inst_ID_ctrl_ff_reg",
            "core_inst_IF_ctrl_ff_reg",
            "core_inst_MEM_ctrl_ff_reg",
            "core_inst_if_stage_inst_pc_fetched_ff_reg",
        ],
        "pc": ["core_inst_if_stage_inst_pc_ff_reg"],
    }

    category_flip_flops: dict[str, list[int]] = {
        category: [] for category in categories
    }

    for index, flip_flop in enumerate(scan_chain_architecture):
        category = "none"

        for cat, substrings in category_classificaion_substrings.items():
            for substring in substrings:
                if substring in flip_flop:
                    if category != "none":
                        print(
                            f"Flip-flop {flip_flop} categorized in multiple categories: {category}, {cat}"
                        )
                    category = cat

        if category == "none":
            raise Exception(f"Flip-flop {flip_flop} not categorized")

        category_flip_flops[category].append(index)

    for _, flip_flops in category_flip_flops.items():
        flip_flops.sort(key=lambda ff_index: scan_chain_architecture[ff_index])

    return category_flip_flops
