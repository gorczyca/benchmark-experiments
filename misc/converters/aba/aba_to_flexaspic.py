from load_flexable_framework import Framework, load_framework


def convert_to_flexaspic(framework: Framework):

    ass_lines = [ f'^{a}.' for a in framework.assumptions ]
    ctr_lines = [ f'{c.assumption}:{c.contrary}.' for c in framework.contraries ]
    rul_lines = [ f'{r.head}:-{",".join(r.body)}.' for r in framework.rules ]

    return ass_lines + ctr_lines + rul_lines


