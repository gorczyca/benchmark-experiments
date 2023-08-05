


INSTANCE_GOAL_PAIRS = {
    'thimm_animals': 'thimm/animals.csv',
    'thimm_maxsat': 'thimm/maxsat_restricted.csv',
    'thimm_random': 'thimm/random.csv',
    'generator': 'generator.csv'
}


SOLVERS = {    
    'flexaspic': {
        'bash_script_loc': 'solvers/flexaspic/flexaspic.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/flexaspic',
            'thimm_maxsat': 'thimm/maxsat/flexaspic',
            'thimm_random': 'thimm/random/flexaspic',
            'generator': 'generator/flexaspic'
        }
    },
    'aspforaspic': {
        'bash_script_loc': 'solvers/aspforaspic/aspforaspic.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/aspforaspic',
            'thimm_maxsat': 'thimm/maxsat/aspforaspic',
            'thimm_random': 'thimm/random/aspforaspic',
            'generator': 'generator/aspforaspic'
        }
    },
    'pyarg': {
        'bash_script_loc': 'solvers/py_arg/py_arg.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/pyarg',
            'thimm_maxsat': 'thimm/maxsat/pyarg',
            'thimm_random': 'thimm/random/pyarg',
        }
    },
    'tweety': {
        'bash_script_loc': 'solvers/tweety/tweety.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/tweety',
            'thimm_maxsat': 'thimm/maxsat/tweety',
            'thimm_random': 'thimm/random/tweety',
        }
    },
    'arg2p': {
        'bash_script_loc': 'solvers/arg2p/arg2p.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/arg2p',
            'thimm_maxsat': 'thimm/maxsat/arg2p',
            'thimm_random': 'thimm/random/arg2p',
        }
    }


    
}