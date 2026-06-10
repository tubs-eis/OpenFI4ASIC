import re
import argparse


def remove_vital_path_delay(input_text: str) -> str:
    # Match VitalPathDelay01(Z) and extract OutSignal and OutTemp
    pattern = r"VitalPathDelay01Z?\s*\(.*?OutSignal\s*=>\s*(?P<OutSignal>\w+).*?OutTemp\s*=>\s*(?P<OutTemp>\w+).*?;"

    # Replace VitalPathDelay01(Z) with assignment of OutTemp to OutSignal
    cleaned_text = re.sub(pattern, "\\g<OutSignal> <= \\g<OutTemp>;", input_text, flags=re.DOTALL)

    return cleaned_text


def remove_vital_wire_delay(input_text: str) -> str:
    # Match VitalWireDelay and extract OutSig and InSig
    pattern = r"VitalWireDelay\s*\((?P<OutSig>\w+),\s*(?P<InSig>\w+),\s*\w+\);"

    # Replace VitalWireDelay with assignment of InSig to OutSig
    cleaned_text = re.sub(pattern, "\\g<OutSig> <= \\g<InSig>;", input_text, flags=re.DOTALL)

    return cleaned_text

def add_missing_header_to_fillcell_x1(input_text : str) -> str:
    fill_cell_x1_pos = input_text.find("""
-- entity declaration --
entity FILLCELL_X1 is
""")

    header = """
---- CELL FILLCELL_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;
"""

    cleaned_text = input_text[:fill_cell_x1_pos] + header + input_text[fill_cell_x1_pos:]

    return cleaned_text

def rewrite_dff_x12_logic(input_text : str) -> str:
    dff_description = """
  signal state : std_ulogic;

begin

  process (CK) is
  begin
    if rising_edge(CK) then
      state <= D;
    end if;
  end process;

  Q <= state;
  QN <= not state;
"""
    last_pos = 0
    cleaned_text = ""
    for x in [1, 2]:
        dff_header_snippet = f"""
architecture VITAL_DFF_X{x} of DFF_X{x} is
  attribute VITAL_LEVEL1 of VITAL_DFF_X{x} : architecture is TRUE;
"""
        dff_start_pos = input_text.find(dff_header_snippet) + len(dff_header_snippet)
        dff_end_pos = input_text.find(f"""
end VITAL_DFF_X{x};
""")

        cleaned_text += input_text[last_pos:dff_start_pos] + dff_description
        last_pos = dff_end_pos

    cleaned_text += input_text[last_pos:]

    return cleaned_text

def main():
    parser = argparse.ArgumentParser(
        description="Remove VITAL constructs not compatible with Vivado from NangateOpenCellLibrary."
    )
    parser.add_argument("-i", "--input-file", type=str, help="Path to NangateOpenCellLibrary.vhd", required=True)
    parser.add_argument("-o", "--output-file", type=str, help="Output file path", required=True)
    args = parser.parse_args()

    with open(args.input_file, "r") as file:
        input_text = file.read()

    cleaned_text = remove_vital_path_delay(input_text)
    cleaned_text = remove_vital_wire_delay(cleaned_text)
    cleaned_text = add_missing_header_to_fillcell_x1(cleaned_text)
    cleaned_text = rewrite_dff_x12_logic(cleaned_text)

    with open(args.output_file, "w") as f:
        f.write(cleaned_text + "\n")


if __name__ == "__main__":
    main()
