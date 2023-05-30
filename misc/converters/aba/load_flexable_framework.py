import re




class Contrary:
    def __init__(self, assumption, contrary):
        self.assumption = assumption
        self.contrary = contrary


class Rule:
    def __init__(self, head, body):
        self.head = head
        self.body = body


class Framework:
    def __init__(self, assumptions, rules, contraries):
        self.assumptions = assumptions
        self.rules = rules
        self.contraries = contraries

    @property
    def alphabet(self):
        return self.assumptions + [c.assumption for c in self.contraries] + [c.contrary for c in self.contraries] + [r.head for r in self.rules] + [s for r in self.rules for s in r.body] 



def load_framework(file_path):

    assumptions = []
    contraries = []
    rules = []

    patterns = [
        (re.compile(r'asm\((.*?)\)\.'), lambda match: assumptions.append(match.group(1))),
        (re.compile(r'contrary\((.*?),(.*?)\)\.'), lambda match: contraries.append(Contrary(match.group(1), match.group(2))) ),
        (re.compile(r'rule\((.*?),\[(.*?)\]\)\.'), lambda match: rules.append(Rule(match.group(1), [x for x in re.sub(r'\s', '', match.group(2)).split(',') if x] )))
    ]

    with open(file_path, 'r') as f:
        for line in f:
            for pattern, action in patterns:
                match = pattern.match(line)
                if match:
                    action(match)
                    continue

    return Framework(assumptions, rules, contraries)









if __name__ == '__main__':
    file_path = '/home/piotr/Dresden/aspic-flexdds/experiments/instances/exp_1/flexable/exp_acyclic_depvary_step1_batch_yyy01.pl'
    f = load_framework(file_path)
    z = 1