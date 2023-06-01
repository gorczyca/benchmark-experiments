INSTANCE_GOAL_PAIRS = {
    'exp_1': 'instance_goal/instance_goal_exp1.csv',
    'exp_2': '',
    'exp_3': 'instance_goal/sat.csv',
}


SOLVERS = {    
    'flexaspic': {
        'bash_script_loc': 'solvers/flexaspic/flexaspic.sh',
        'benchmarks': {
            'exp_1': 'instances/exp_1/flexaspic',
            'exp_2': '',
            'exp_3': 'instances/exp_3/flexaspic',
            'test': ''
        }
    },
    'flexable': {
        'bash_script_loc': 'solvers/flexable/flexable.sh',
        'benchmarks': {
            'exp_1': 'instances/exp_1/flexable',
            'exp_2': '',
            'exp_3': '',
            'test': ''
        }
    },
    'aspforaba': {
        'bash_script_loc': 'solvers/aspforaba/aspforaba.sh',
        'benchmarks': {
            'exp_1': 'instances/exp_1/aspforaba',
            'exp_2': '',
            'exp_3': '',
            'test': ''
        }
    },
    'aspforaspic': {
        'bash_script_loc': 'solvers/aspforaspic/aspforaspic.sh',
        'benchmarks': {
            'exp_1': 'instances/exp_1/aspforaspic',
            'exp_2': '',
            'exp_3': '',
            'test': ''
        }
    },
    'abagraph': {
        'bash_script_loc': 'solvers/abagraph/abagraph.sh',
        'benchmarks': {
            'exp_1': 'instances/exp_1/abagraph'
        }
    }
    
}