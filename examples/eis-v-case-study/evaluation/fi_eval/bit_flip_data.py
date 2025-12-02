"""
Code for representing parsing and handling fi campaign data.
"""

from dataclasses import dataclass
from typing import Self
from pathlib import Path


@dataclass
class BitFlipData:
    control_flow_violation: bool
    wrong_result: bool

    @classmethod
    def parse_from_int(cls, data: int) -> Self:
        control_flow_violation = data & 0b0001 != 0
        wrong_result = data & 0b0010 != 0

        return cls(control_flow_violation, wrong_result)

    def any_error(self) -> bool:
        return self.control_flow_violation or self.wrong_result


def parse_bit_flip_errors(file: Path) -> list[list[BitFlipData]]:
    content = ""
    with open(file, "r") as f:
        content = f.read()

    result: list[list[BitFlipData]] = []
    for line in content.splitlines():
        if line.startswith("#"):
            # TODO: Parse comments to know which ffs and cycles where injected
            continue

        ff_data: list[BitFlipData] = []
        for c in line:
            if c in "0123456789ABCDEFabcdef":
                ff_data.append(BitFlipData.parse_from_int(int(c, 16)))

        result.append(ff_data)

    return result
