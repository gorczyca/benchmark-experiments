import os

import pandas as pd


# OUTPUTS_PATH = '/home/piotr/Dresden/aspic-flexdds/exp_outs_bak'
# OUTPUTS_PATH = '/home/piotr/Dresden/aspic-flexdds/experiments/outputs/exp_1'

OUTPUTS_PATH = '/home/piotr/Dresden/jelia_plots/aba_outputs'

CORRECT_OUTPUT = 'exp_1_adm_600_aspforaba.csv'


if __name__ == '__main__':
    outputs = {}

    for file_name in os.listdir(OUTPUTS_PATH):
        file_path = os.path.join(OUTPUTS_PATH, file_name)
        if os.path.isfile(file_path):
            outputs[file_name] = pd.read_csv(file_path)
            outputs[file_name].set_index(['instance','goal'], inplace=True)
            outputs[file_name]['verdict'] = None
    
    correct_df = outputs[CORRECT_OUTPUT]

    for solver, df in outputs.items():
        for correct_index, correct_row in correct_df.iterrows():
            df_result = df.loc[correct_index, 'result']
            if df_result == 'TIMEOUT':
                verdict = None
            else:
                verdict = 'corr' if df.loc[correct_index, 'result'] == correct_row.result else 'inc'
            df.loc[correct_index, 'verdict'] = verdict

        df.to_csv(f'{OUTPUTS_PATH}/corr_{solver}')
            
    


        



