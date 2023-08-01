import time, subprocess, sys, os

import pandas as pd
from alive_progress import alive_bar

from config import SOLVERS, INSTANCE_GOAL_PAIRS


def get_results_file(results_file_name):
        # create file if does not exist
    if not os.path.exists(results_file_name):
        with open(results_file_name, 'w') as f:
            f.write('instance,goal,result,duration')

    outputs_pd = pd.read_csv(results_file_name)
    return outputs_pd


# solvers/flexaspic/flexaspic.sh instances/exp_1/flexaspic/exp_cycles_depvary_step10_batch_yyy01.pl p3 adm

def get_solver_result(solver_path, solver, timeout, file, query, semantics):
    # task = 'DC-CO' if SEMANTICS == 'com' else 'DC-ST'

    bash_script_loc = f"{solver_path}/{SOLVERS[solver]['bash_script_loc']}"

    command = f'{bash_script_loc} {file} {query} {semantics}'

    start_time = time.time()
    try:
        output = subprocess.check_output(
            args=[command], shell=True, stderr=subprocess.STDOUT, timeout=timeout)
        verdict = output.decode().strip()[-1] # get just the very last symbol
        duration = time.time() - start_time
        return verdict, "{:.2f}".format(duration)
    except subprocess.TimeoutExpired:
        return 'TIMEOUT', float(timeout)    
    


if __name__ == '__main__':


    [solver, experiment_type, timeout_str, semantics, solver_path, instances_path, instance_goal_path, outputs_path] = sys.argv[1:]

    output_dir = f'{outputs_path}/{experiment_type}'

    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    results_file_name = f'{output_dir}/{experiment_type}_{semantics}_{timeout_str}_{solver}.csv'
    outputs_df = get_results_file(results_file_name)

    instance_goal_df = pd.read_csv(f'{instance_goal_path}/{INSTANCE_GOAL_PAIRS[experiment_type]}')
    instance_goal_df_size = len(instance_goal_df)

    with alive_bar(instance_goal_df_size, dual_line=True, title=solver) as bar:
        for i, (index, row) in enumerate(instance_goal_df.iterrows(), start=1):

            if ((outputs_df['instance'] == row.instance) & (outputs_df['goal'] == row.goal)).any():
                print(f'Already checked instance: {row.instance} with goal: {row.goal}')
                bar()
                continue

            full_file_path = f"{instances_path}/{SOLVERS[solver]['benchmarks'][experiment_type]}/{row.instance}"
            result, duration = get_solver_result(solver_path, solver, int(timeout_str), full_file_path, row.goal, semantics)
            row_to_append = pd.DataFrame({
                'instance': [row.instance],
                'goal': [row.goal],
                'result': [result],
                'duration': [duration]
            })

            outputs_df = pd.concat([outputs_df, row_to_append], ignore_index=True)
            outputs_df.to_csv(results_file_name, index=False)
            bar()
