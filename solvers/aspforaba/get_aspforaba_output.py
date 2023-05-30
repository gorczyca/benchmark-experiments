import pandas as pd
import subprocess
import math


#INPUT_FILE = './flexABle/aba-tests/framework_goals.csv'
INPUT_FILE =  '/home/piotr/test/newest_ubuntu_data/Dresden/flexABle/aba-experiments-new/instances/benchmarks.csv'
OUTPUT_FILE = '/home/piotr/test/newest_ubuntu_data/Dresden/flexABle/aba-tests/aspforaba_results2.csv'

BASE_INSTANCES_PATH = ''
ADM_COLUMN_NAME = 'adm_result'
STB_COLUMN_NAME = 'stb_result'
BASH_SCRIPT = '/home/piotr/test/newest_ubuntu_data/Dresden/flexABle/aba-tests/solvers/aspforaba/run_asp.sh'


def get_asp_result(instance, goal, semantics):
    output = subprocess.check_output(
        args=[f'bash {BASH_SCRIPT} {instance} {goal} {semantics} 0'], shell=True, stderr=subprocess.STDOUT)
    split = output.decode().split()
    result = 'yes' if split[0] == 'SATISFIABLE' else 'no'
    duration = float(split[-1][:-1])
    return result, duration


def get_bar_text(sem, duration, res_str, satisfiable_count, i):
    sat_perc = int(float(satisfiable_count) / (i) * 100)
    return f'{sem}: Last: {duration}s\tResult: {res_str}\tSat. count: {satisfiable_count}/{i} [{sat_perc}%]'


if __name__ == '__main__':
    # input_df = pd.read_csv(INPUT_FILE)
    # total_size = len(input_df)
    # input_df.set_index(['instance','goal'], inplace=True)
    output_df = pd.DataFrame(columns=['instance', 'goal', 'adm_result', 'adm_duration', 'stb_result', 'stb_duration'])

    counter = 1
    with open(INPUT_FILE, 'r') as f:
        for line in f:
            line = ''.join(line.split())

            instance, stmts = line.split(',')
            for goal in stmts.split(';'):
                # print(f'{counter}/6800')
                counter += 1
                # admissible semantics
                adm_result, adm_duration = get_asp_result(
                    instance, goal, 'adm')

                # stable semantics
                stb_result, stb_duration = get_asp_result(
                    instance, goal, 'stb')

                row_to_append = pd.DataFrame({
                    'instance': [instance],
                    'goal': [goal],
                    'adm_result': [adm_result],
                    'adm_duration': [adm_duration],
                    'stb_result': [adm_result],
                    'stb_duration': [adm_duration]                    
                })


                output_df = pd.concat([output_df, row_to_append], ignore_index=True)
        output_df.to_csv(OUTPUT_FILE)
