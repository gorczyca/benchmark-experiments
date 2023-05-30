from load_flexable_framework import Framework, load_framework


def convert_to_aspforaspic(framework: Framework):
    ass_lines = [ f'premise({a}).' for a in framework.assumptions ]
    ctr_lines = [ f'contrary({c.assumption},{c.contrary}).' for c in framework.contraries ]
    rul_lines = [ fact for i, r in enumerate(framework.rules) for fact in [f'strict_head(sr{i},{r.head}).'] + [f'strict_body(sr{i},{b}).' for b in r.body] ]

    return ass_lines + ctr_lines + rul_lines
    