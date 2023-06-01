INSTANCE_GOAL_PAIRS = {
    'exp_1': 'instance_goal/instance_goal_exp1.csv',
    'exp_2': '',
    'exp_3': 'instance_goal/sat.csv',
    'contradictories_sat': 'instance_goal/contradictories_sat.csv',
    'contradictories_unsat': 'instance_goal/contradictories_unsat.csv',
    'flat_sat': 'instance_goal/flat_sat.csv',
    'flat_unsat': 'instance_goal/flat_unsat.csv',
    'nonflat_sat': 'instance_goal/nonflat_sat.csv',
    'nonflat_unsat': 'instance_goal/nonflat_unsat.csv',
    'wellformed_sat': 'instance_goal/wellformed_sat.csv',
    'wellformed_unsat': 'instance_goal/wellformed_unsat.csv',    
}


SOLVERS = {    
    'flexaspic': {
        'bash_script_loc': 'solvers/flexaspic/flexaspic.sh',
        'benchmarks': {
            'exp_1': 'instances/exp_1/flexaspic',
            'exp_2': '',
            'exp_3': 'instances/exp_3/flexaspic',
            'contradictories_sat': 'instances/contradictories/flexaspic',
            'contradictories_unsat': 'instances/contradictories/flexaspic',
            'flat_sat': 'instances/flat/flexaspic',
            'flat_unsat': 'instances/flat/flexaspic',
            'nonflat_sat': 'instances/nonflat/flexaspic',
            'nonflat_unsat': 'instances/nonflat/flexaspic',
            'wellformed_sat': 'instances/wellformed/flexaspic',
            'wellformed_unsat': 'instances/wellformed/flexaspic'
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
            'test': '',
            'contradictories_sat': 'instances/contradictories/aspforaspic',
            'contradictories_unsat': 'instances/contradictories/aspforaspic',
            'flat_sat': 'instances/flat/aspforaspic',
            'flat_unsat': 'instances/flat/aspforaspic',
            'nonflat_sat': 'instances/nonflat/aspforaspic',
            'nonflat_unsat': 'instances/nonflat/aspforaspic',
            'wellformed_sat': 'instances/wellformed/aspforaspic',
            'wellformed_unsat': 'instances/wellformed/aspforaspic'
        }
    },
    'abagraph': {
        'bash_script_loc': 'solvers/abagraph/abagraph.sh',
        'benchmarks': {
            'exp_1': 'instances/exp_1/abagraph'
        }
    }
    
}