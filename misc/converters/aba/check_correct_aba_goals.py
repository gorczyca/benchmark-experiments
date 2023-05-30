import os

import pandas as pd

from load_flexable_framework import load_framework

FLEXABLE_FRAMEWORK_INPUT_DIR = '/home/piotr/Dresden/aspic-flexdds/experiments/instances/exp_1/flexable'
INSTANCE_GOAL_CSV = '/home/piotr/Dresden/aspic-flexdds/experiments/instance_goal/instance_goal_exp1.csv'


if __name__ == '__main__':
    # Iterate over all files in the directory

    not_contained = {}
    count = 0

    instance_goal_df = pd.read_csv(INSTANCE_GOAL_CSV)

    for index, row in instance_goal_df.iterrows():
        framework_full_path = os.path.join(FLEXABLE_FRAMEWORK_INPUT_DIR, row.instance)
        framework = load_framework(framework_full_path)

        if row.goal not in framework.alphabet:
            count += 1
            if row.instance not in not_contained:
                not_contained[row.instance] = []
            
            not_contained[row.instance].append(row.goal)
        else:
            print(f'{index} OK')

    print(count)
    print(not_contained)


