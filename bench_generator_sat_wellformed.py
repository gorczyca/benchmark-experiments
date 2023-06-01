from itertools import product

import random

import pandas as pd

from runner import get_solver_result


ASPFORASPIC_BENCHMARKS_LOC = 'instances/wellformed/aspforaspic'
FLEXASPIC_BENCHMARKS_LOC = 'instances/wellformed/flexaspic'


OUTPUT_CSV_LOC = 'results_gen_sat_wellformed.csv' 
# INST_GOAL_CSV_LOC = 'inst_goal_sat.csv'

TIMEOUT = 600




class Framework:
    def __init__(self, premises, axioms, sentences, all_sentences, contraries, contradictories, strict_rules, defeasible_rules):
        self.premises = premises
        self.axioms = axioms
        self.sentences = sentences # what is the difference between sentences and all sentences?
        self.all_sentences = all_sentences
        self.contraries = contraries
        self.contradictories = contradictories
        self.strict_rules = strict_rules
        self.defeasible_rules = defeasible_rules
        




def create_framework(n_sentences, proc_axioms, proc_premises, max_rules_per_head,
    max_size_of_bodies, max_contraries_per_statement, def_rule_ratio, rule_contrary_ratio, sentence_contrary_ratio):

    axioms_range = int(proc_axioms * n_sentences)
    premises_range = int(proc_premises * n_sentences)
    remaining_sentences_range = n_sentences - (axioms_range + premises_range) 

    axioms = [f'a{i}' for i in range(axioms_range)]
    premises = [f'p{i}' for i in range(premises_range)]
    remaining_sentences = [f's{i}' for i in range(remaining_sentences_range)]

    all_sentences = remaining_sentences+premises+axioms
    # random.shuffle(all_sentences) # shuffle

    rules = []

    # 
    for head in all_sentences:
        rules_for_this_head = random.randint(0, max_rules_per_head)
        for _ in range(rules_for_this_head):
            body_size = random.randint(1, max_size_of_bodies)
            body = random.sample(all_sentences, body_size)

            rules.append((head, body))

    

    def_rule_count = int(def_rule_ratio * len(rules))
    random.shuffle(rules)
    def_rules, strict_rules = rules[:def_rule_count], rules[def_rule_count:] 

    strict_rule_heads = map(lambda x: x[0], strict_rules)

    can_have_contraries = set(all_sentences) - (set(strict_rule_heads).union(set(axioms)))

    # add labels to def rules
    def_rules = [(f'r{i}', r[0], r[1]) for i, r in enumerate(def_rules)]

    contraries = {s: random.sample(all_sentences, 1) for s in random.sample(can_have_contraries, int(sentence_contrary_ratio * len(can_have_contraries))) }
    
    def_rules_to_have_contraries = random.sample(def_rules,int(rule_contrary_ratio*len(def_rules)))

    for def_rule in def_rules_to_have_contraries:
        contraries_number = random.randint(0, max_contraries_per_statement)
        if contraries_number > 0:
            contraries[def_rule[0]] = random.sample(all_sentences, contraries_number)

    # return premises, axioms, sentences, all_sentences, contraries, strict_rules, defeasible_rules
    return Framework(premises, axioms, remaining_sentences, all_sentences, contraries, {}, strict_rules, def_rules)




def print_flex(framework: Framework, out_filename):
    """
    Print the given framework in flex format.
    """
    with open(out_filename, 'w') as out:
        for axiom in framework.axioms:
            out.write(f"{axiom}.\n")
        for premise in framework.premises:
            out.write(f"^{premise}.\n")
        for a, c in framework.contraries.items():
            for contr in c:
                out.write(f"{a}:{contr}.\n")
        for a, ctr in framework.contradictories.items():
            out.write(f"{a}:{ctr}.\n")
            out.write(f"{ctr}:{a}.\n")
        for i, rule in enumerate(framework.defeasible_rules):
            out.write(f"{rule[0]}:{rule[1]}:-{','.join(rule[2])}.\n")
        for i, rule in enumerate(framework.strict_rules):
            out.write(f"{rule[0]}:-{','.join(rule[1])}.\n")


def print_ASP(framework: Framework, out_filename):
    """
    Print the given framework in ASP format.
    """
    with open(out_filename, 'w') as out:
        for axiom in framework.axioms:
            out.write("axiom(" + axiom + ").\n")
        for premise in framework.premises:
            out.write("premise(" + premise + ").\n")
        for a, c in framework.contraries.items():
            for contr in c:
                out.write(f"contrary({a},{contr}).\n")
        for a, ctr in framework.contradictories.items():
            # For now have only contradictories
            out.write(f"contradictory({a},{ctr}).\n")
        for rule in framework.defeasible_rules:
            out.write(f"head({rule[0]},{rule[1]}).\n")
            if rule[2]:
                for body in rule[2]:
                    out.write(f"body({rule[0]},{body}).\n")
        for i, rule in enumerate(framework.strict_rules):
            out.write("strict_head(sr" + str(i) + "," + rule[0] + ").\n")
            if rule[1]:
                for body in rule[1]:
                    out.write("strict_body(sr" + str(i) + "," + body + ").\n")



# statements = [ 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 5000, 5500 ]
statements = [ 50, 100, 150, 200, 250, 300, 350, 400, 500, 550 ]
# statements = [20]
max_rules_per_statement = [2]
# max_rules_per_statement = [2, 5, 10]
# max_sentences_per_body = [5]
max_sentences_per_body = [15]
max_contraries_per_statement = [1]
axioms_perc = [0.005, 0.01, 0.05, 0.1]
premises_perc = [0.25]
defeasible_rules_ratio = [0.25]
atom_contrary_ratio = [0.25]
def_rule_contrary_ratio = [0.25]

sample_size=10


combinations = list(product(*[
    statements, 
    max_rules_per_statement, 
    max_sentences_per_body, 
    max_contraries_per_statement, 
    axioms_perc, 
    premises_perc, 
    defeasible_rules_ratio, 
    atom_contrary_ratio, 
    def_rule_contrary_ratio]))

# statements = 5000 # n
# max_rules_per_statement = 1 # r
# max_sentences_per_body = 50 # s
# max_contraries_per_statement = 2 
# max_body_chunk_size = 3
# axioms_perc = 0.5 # a
# premises_perc = 0.2 # p
# defeasible_rules_ratio = 0.35 # dr
# atom_contrary_ratio = 0.35 # ac
atom_contradictory_ratio = 0.5 # if 0 then for every contrary a:b b is just the contrary of a. Otherwise a change that a is also contrary of b
# def_rule_contrary_ratio = 0.35 # drc



 
if __name__ == '__main__':

    sat_instances_number = 150
    sat_count = 0
    while sat_count < sat_instances_number:

        all_size = len(combinations)
        for i, combination in enumerate(combinations):

            (statements_, 
            max_rules_per_statement_, 
            max_sentences_per_body_, 
            max_contraries_per_statement_, 
            axioms_perc_, 
            premises_perc_, 
            defeasible_rules_ratio_, 
            atom_contrary_ratio_, 
            def_rule_contrary_ratio_) = combination

            framework = create_framework(statements_, axioms_perc_, premises_perc_, max_rules_per_statement_, max_sentences_per_body_, max_contraries_per_statement_, defeasible_rules_ratio_, def_rule_contrary_ratio_, atom_contrary_ratio_)

            goals = random.sample(framework.sentences, sample_size)


            output_file_name = f"n={statements_}_rps={max_rules_per_statement_}_spb={max_sentences_per_body_}_cps={max_contraries_per_statement_}_a={axioms_perc_}_p={premises_perc_}_dr={defeasible_rules_ratio_}_ac={atom_contrary_ratio_}_drc={def_rule_contrary_ratio_}.lp"
            
            asp_benchmark_loc = f'{ASPFORASPIC_BENCHMARKS_LOC}/{output_file_name}'
            flex_benchmark_loc = f'{FLEXASPIC_BENCHMARKS_LOC}/{output_file_name}'
            
            print_ASP(framework, asp_benchmark_loc)
            print_flex(framework, flex_benchmark_loc)

            for j, g in enumerate(goals):


                asp_result, asp_time_needed = get_solver_result('aspforaspic', TIMEOUT, asp_benchmark_loc, g, 'adm')

                if asp_result == 'y':
                    sat_count += 1
                    print(f'sat {sat_count}')

                with open(OUTPUT_CSV_LOC, 'a') as f:

                    f.write(f'{output_file_name},{g},{asp_result},{asp_time_needed}\n')

