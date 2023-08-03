


INSTANCE_GOAL_PAIRS = {
    'thimm_animals': 'thimm/animals.csv',
    'thimm_animals_0.2': 'thimm/animals.csv',
    'thimm_maxsat': 'thimm/maxsat.csv',
    'thimm_random': 'thimm/random.csv',
    'thimm_random_0.2': 'thimm/random.csv',
    'thimm_random_pyarg': 'thimm/random.csv',    
    'thimm_random_tweety': 'thimm/random.csv'    
}


SOLVERS = {    
    'flexaspic': {
        'bash_script_loc': 'solvers/flexaspic/flexaspic.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/flexaspic',
            'thimm_animals_0.2': 'thimm/animals_0.2/flexaspic',
            'thimm_maxsat': 'thimm/maxsat/flexaspic',
            'thimm_random': 'thimm/random/flexaspic',
            'thimm_random_0.2': 'thimm/random_0.2/flexaspic',
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
            'thimm_animals_0.2': 'thimm/animals_0.2/aspforaspic',
            'thimm_maxsat': 'thimm/maxsat/aspforaspic',
            'thimm_random': 'thimm/random/aspforaspic',
            'thimm_random_0.2': 'thimm/random_0.2/aspforaspic',
        }
    },
    'abagraph': {
        'bash_script_loc': 'solvers/abagraph/abagraph.sh',
        'benchmarks': {
        }
    },
    'py_arg': {
        'bash_script_loc': 'solvers/py_arg/py_arg.sh',
        'benchmarks': {
            'thimm_random_pyarg': 'thimm/random_pyarg',
        }
    },
    'tweety': {
        'bash_script_loc': 'solvers/tweety/tweety.sh',
        'benchmarks': {
            'thimm_random_tweety': 'thimm/random_tweety',
        }
    }


    
}