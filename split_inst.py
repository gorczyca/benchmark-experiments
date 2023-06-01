import pandas as pd

SAMPLE_SIZE = 150


# PATH = 'results_gen_sat_contradictories.csv'
# TYPE = 'contradictories'

PATH = 'results_gen_sat_nonflat.csv'
TYPE = 'nonflat'

# PATH = 'results_gen_sat_wellformed.csv'
# TYPE = 'wellformed'

# PATH = 'results_gen_sat_flat.csv'
# TYPE = 'flat'

if __name__ == '__main__':
    df = pd.read_csv(PATH)

    sat = df[df['verdict'] == 'y'].sample(n=SAMPLE_SIZE)

    sat[['instance', 'goal']].to_csv(f'instance_goal/{TYPE}_sat.csv', index=False)

    unsat = df[df['verdict'] == 'n'].sample(n=SAMPLE_SIZE)
    unsat[['instance', 'goal']].to_csv(f'instance_goal/{TYPE}_unsat.csv', index=False)

    pass
    
