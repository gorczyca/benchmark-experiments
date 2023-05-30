import pandas as pd
import subprocess
from alive_progress import alive_bar
import math


INPUT_FILE = './flexABle/aba-tests/framework_goals.csv'
#OUTPUT_FILE = './flexABle/aba-tests/aspforaba_defences_{0}.csv'
OUTPUT_FILE = '~/Dresden/flexABle/aba-dd-rule-based/testResources/aspforaba_defences_{0}.csv'

BASE_INSTANCES_PATH = ''
COLUMN_NAME = 'defences'
BASH_SCRIPT = './flexABle/aba-tests/solvers/aspforaba/run_asp.sh'

#SEMANTICS = 'adm'
#SEMANTICS = 'com'
SEMANTICS = 'stb'



def get_asp_result(instance, goal, semantics):
    try:
        output = subprocess.check_output(args=[f'bash {BASH_SCRIPT} {instance} {goal} {semantics} 1'], shell=True, stderr=subprocess.STDOUT)
        o_defences = output.decode().replace('in(','').replace(')', '')[:-1].split('\n') # remove predicates, remove last \n (but not all) two \n\n at the end might symbolize the empty extension
        defences_count = len(o_defences)
        defences_encoded = ';'.join(o_defences)
        return f'[{defences_encoded}]', defences_count
    except: # was unsatisfiable
        return '', 0


def get_bar_text(sem, duration, res_str, satisfiable_count, i):
    sat_perc = int(float(satisfiable_count) / (i) * 100)
    return f'{sem}: Last: {duration}s\tResult: {res_str}\tSat. count: {satisfiable_count}/{i} [{sat_perc}%]'

if __name__ == '__main__':
    input_df = pd.read_csv(INPUT_FILE)
    total_size = len(input_df)
    input_df.set_index(['instance','goal'], inplace=True)
    output_df = input_df.copy()
    defences_sum = 0
    defences_max = 0
    defences_min = 0

    
    with alive_bar(total_size, dual_line=True, title='aspforaba:') as bar:
        for i, row in enumerate(input_df.iterrows(), start=1):
            instance, goal = row[0]

            # admissible semantics
            defences_encoded, defences_count = get_asp_result(instance, goal, SEMANTICS) 
            
            # update stats
            defences_sum += defences_count
            defences_avg = defences_sum / i
            
            if defences_count > defences_max:
                defences_max = defences_count

            if defences_count < defences_min:
                defences_min = defences_count
                                            
            bar.text = f'avg: {defences_avg}\tmax: {defences_max}\tmin: {defences_min}' 
        
            output_df.at[(instance, goal), COLUMN_NAME] = defences_encoded            
            bar()

    output_df.to_csv(OUTPUT_FILE.format(SEMANTICS))