


INSTANCE_GOAL_PAIRS = {
    'thimm_animals': 'thimm/animals.csv',
    'thimm_maxsat': 'thimm/maxsat_restricted.csv',
    'thimm_random': 'thimm/random.csv',
    'generator_1': 'generator/generator_1.csv',
    'generator_2': 'generator/generator_2.csv',
    'generator_3': 'generator/generator_3.csv',
    'generator_4': 'generator/generator_4.csv',
    'generator_5': 'generator/generator_5.csv',
    'generator_hard_1': 'generator_hard/generator_hard_1.csv',
    'generator_hard_2': 'generator_hard/generator_hard_2.csv',
    'generator_hard_3': 'generator_hard/generator_hard_3.csv',
    'generator_hard_4': 'generator_hard/generator_hard_4.csv',
    'generator_hard_5': 'generator_hard/generator_hard_5.csv',

}


SOLVERS = {    
    'flexaspic': {
        'bash_script_loc': 'solvers/flexaspic/flexaspic.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/flexaspic',
            'thimm_maxsat': 'thimm/maxsat/flexaspic',
            'thimm_random': 'thimm/random/flexaspic',
            'generator_1': 'generator/generator_1/flexaspic',
            'generator_2': 'generator/generator_2/flexaspic',
            'generator_3': 'generator/generator_3/flexaspic',
            'generator_4': 'generator/generator_4/flexaspic',
            'generator_5': 'generator/generator_5/flexaspic',

            'generator_hard_1': 'generator_hard/generator_hard_1/flexaspic',
            'generator_hard_2': 'generator_hard/generator_hard_2/flexaspic',
            'generator_hard_3': 'generator_hard/generator_hard_3/flexaspic',
            'generator_hard_4': 'generator_hard/generator_hard_4/flexaspic',
            'generator_hard_5': 'generator_hard/generator_hard_5/flexaspic',
        }
    },
    'aspforaspic': {
        'bash_script_loc': 'solvers/aspforaspic/aspforaspic.sh',
        'benchmarks': {
            'thimm_animals': 'thimm/animals/aspforaspic',
            'thimm_maxsat': 'thimm/maxsat/aspforaspic',
            'thimm_random': 'thimm/random/aspforaspic',
            'generator_1': 'generator/generator_1/aspforaspic',
            'generator_2': 'generator/generator_2/aspforaspic',
            'generator_3': 'generator/generator_3/aspforaspic',
            'generator_4': 'generator/generator_4/aspforaspic',
            'generator_5': 'generator/generator_5/aspforaspic',

            'generator_hard_1': 'generator/generator_1/aspforaspic',
            'generator_hard_2': 'generator/generator_2/aspforaspic',
            'generator_hard_3': 'generator/generator_3/aspforaspic',
            'generator_hard_4': 'generator/generator_4/aspforaspic',
            'generator_hard_5': 'generator/generator_5/aspforaspic',
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