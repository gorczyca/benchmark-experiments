


INSTANCE_GOAL_PAIRS = {
    'thimm_animals': 'thimm/animals.csv',
    'thimm_maxsat': 'thimm/maxsat.csv',
    'thimm_random': 'thimm/random.csv'
}


SOLVERS = {    
    'flexaspic': {
        'bash_script_loc': 'solvers/flexaspic/flexaspic.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/flexaspic',
            'thimm_maxsat': 'thimm/maxsat/flexaspic',
            'thimm_random': 'thimm/random/flexaspic',
        }
    },
    'flexable': {
        'bash_script_loc': 'solvers/flexable/flexable.sh',
        'benchmarks': {

        }
    },
    'aspforaba': {
        'bash_script_loc': 'solvers/aspforaba/aspforaba.sh',
        'benchmarks': {

        }
    },
    'aspforaspic': {
        'bash_script_loc': 'solvers/aspforaspic/aspforaspic.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/aspforaspic',
            'thimm_maxsat': 'thimm/maxsat/aspforaspic',
            'thimm_random': 'thimm/random/aspforaspic',
        }
    },
    'abagraph': {
        'bash_script_loc': 'solvers/abagraph/abagraph.sh',
        'benchmarks': {
        }
    }
    
}