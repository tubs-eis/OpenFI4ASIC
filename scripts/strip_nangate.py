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

    with open(args.output_file, "w") as f:
        f.write(cleaned_text)


if __name__ == "__main__":
    main()
