import os

from load_flexable_framework import load_framework
from aba_to_flexaspic import convert_to_flexaspic
from aba_to_aspforaspic import convert_to_aspforaspic


INPUT_DIR = '/home/piotr/Dresden/aspic-flexdds/experiments/instances/exp_1/flexable'


CONVERSIONS = {
    'flexaspic': {
        'conversion': convert_to_flexaspic,
        'output_path': '/home/piotr/Dresden/aspic-flexdds/experiments/instances/exp_1/flexaspic'
    },
    'aspforaspic': {
        'conversion': convert_to_aspforaspic,
        'output_path': '/home/piotr/Dresden/aspic-flexdds/experiments/instances/exp_1/aspforaspic'

    }
}

CONVERT_TO = [
    'flexaspic',
    'aspforaspic'
]


if __name__ == '__main__':
    # Iterate over all files in the directory
    for filename in os.listdir(INPUT_DIR):
        filepath = os.path.join(INPUT_DIR, filename)
        if os.path.isfile(filepath):
            # Process the file
            framework = load_framework(filepath)
            for system in CONVERT_TO:
                output_filepath = f"{CONVERSIONS[system]['output_path']}/{filename}"
                with open(output_filepath, 'w') as f:
                    output_file_lines = CONVERSIONS[system]['conversion'](framework)
                    f.writelines('\n'.join(output_file_lines))