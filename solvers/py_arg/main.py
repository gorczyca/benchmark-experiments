import sys

from py_arg_visualisation.app import evaluate_strAF




if __name__ == '__main__':

    filepath, goal = sys.argv[1:]
    # filepath, goal = '/home/piotr/Dresden/aspic-flexdds/random_0_pyarg/rand_5_10_2_0.2__14.aspic', '-a2'

    with open(filepath, 'r') as file:
        lines = file.read()
        axioms, premises, strict_rules, def_rules = list(map(lambda x: x.strip(), lines.split('@')))
                                                        
        # print(lines)

        accepted_statements = evaluate_strAF(None, axioms, premises, strict_rules, def_rules, '', '', '', '', 'Adm', 'Cred')
        acc_stmt_string = list(map(lambda x: x.s1, accepted_statements))
        result = 'y' if goal in acc_stmt_string else 'n'
        print(result)