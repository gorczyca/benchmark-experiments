'''Copyright <2022> <Tuomo Lehtonen, University of Helsinki>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
'''

import clingo
import sys

class StbASPIC:

    def __init__(self):
        self.last_rule = []
        self.ctl = None
        self.ctl2 = None
        self.ctl3 = None
        self.defparts = []
        self.solving_assumptions = []
        self.last_model = None
        self.in_set = set()
        self.undefeated_set = set()
        self.prev_inout_atoms = []

    def _elitist_on_model(self, model):
        inout_atoms = []
        for a in self.defparts:
            outatom = clingo.Function("out", [clingo.Function(a)])
            undef_atom = clingo.Function("undefeated", [clingo.Function(a)])
            if model.contains(undef_atom):
                self.undefeated_set.add(a)
            if model.contains(outatom):
                inout_atoms.append(outatom)
            else:
                inatom = clingo.Function("in", [clingo.Function(a)])
                inout_atoms.append(inatom)
                self.in_set.add(a)

        self.prev_inout_atoms = inout_atoms
        self.last_model = model.symbols(shown=True)

    def _counterexample_on_model(self, model):
        body = []

        for a in self.defparts:
            outatom = clingo.Function("out", [clingo.Function(a)])
            inatom = clingo.Function("in", [clingo.Function(a)])
            if not model.contains(inatom):
                with self.ctl.backend() as backend:
                    body.append(backend.add_atom(outatom))

        self.last_rule = body

    def _parse_input(self, input_file):
        text = open(input_file, "r").read().split("\n")
        for line in text:
            if line.startswith("premise"):
                self.defparts.append(line.split("(")[1].split(")")[0])
            if line.startswith("head"):
                self.defparts.append(line.split("(")[1].split(",")[0])

    def elitist(self, elitist_candidate, elitist_verify, input_file, mode):
        sols = list()
        iterations = 0

        self.ctl.load(elitist_candidate)
        self.ctl.load(input_file)
        self.ctl.ground([("base", [])], context=self)

        self.ctl2 = clingo.Control()
        self.ctl2.load(elitist_verify)
        self.ctl2.load(input_file)
        self.ctl2.ground([("base", [])], context=self)

        while True:
            if not self.ctl.solve(assumptions=self.solving_assumptions,on_model=self._elitist_on_model).satisfiable:
                break

            body = []
            for atom in self.prev_inout_atoms:
                with self.ctl.backend() as backend:
                    body.append(backend.add_atom(atom))

            with self.ctl.backend() as backend:
                backend.add_rule(head=[],body=body)

            iterations = iterations+1
            print("candidate", iterations)

            # assign in and undefeated
            for a in self.in_set:
                inatom = clingo.Function("in", [clingo.Function(a)])
                self.ctl2.assign_external(inatom,True)
            for a in self.undefeated_set:
                undef_atom = clingo.Function("undefeated", [clingo.Function(a)])
                self.ctl2.assign_external(undef_atom,True)

            # try to find counterexample
            if not self.ctl2.solve(on_model=self._counterexample_on_model).satisfiable:
                sols.append(self.last_model)
                print("solution found")
                if mode != "enum":
                    break

            # rule out subset of candidate that doesn't defeat every outside argument
            with self.ctl.backend() as backend:
                backend.add_rule(head=[],body=self.last_rule)

            # erase in and undefeated for next iteration
            for a in self.in_set:
                inatom = clingo.Function("in", [clingo.Function(a)])
                self.ctl2.assign_external(inatom,False)
            for a in self.undefeated_set:
                undef_atom = clingo.Function("undefeated", [clingo.Function(a)])
                self.ctl2.assign_external(undef_atom,False)

            self.in_set = set()
            self.undefeated_set = set()

        print("candidate iterations:", iterations)
        if mode == "skept":
            if len(sols) > 0:
                print("FALSE")
            elif len(sols) == 0:
                print("TRUE")
        else:
            print(len(sols), "solutions: ")
            for s in sols:
                print(s)
            if len(sols) > 0:
                print("TRUE")
            else:
                print("FALSE")

    def run(self):
        input_file = sys.argv[1]
        mode = sys.argv[2]

        elitist_candidate = "elitist-stb-candidate-aspic.dl"
        elitist_verify = "elitist-stb-verifying-aspic.dl"

        self._parse_input(input_file)
        self.ctl = clingo.Control()

        if mode == "enum":
            self.elitist(elitist_candidate, elitist_verify, input_file, mode)
        elif mode == "findone":
            self.elitist(elitist_candidate, elitist_verify, input_file, mode)
        elif mode == "cred":
            query = sys.argv[3]
            query_atom = clingo.Function("supported", [clingo.Function(query)])
            query_assumption = [(query_atom,True)]
            self.solving_assumptions = query_assumption
            self.elitist(elitist_candidate, elitist_verify, input_file, mode)
        elif mode == "skept":
            query = sys.argv[3]
            query_atom = clingo.Function("supported", [clingo.Function(query)])
            query_assumption = [(query_atom,False)]
            self.solving_assumptions = query_assumption
            self.elitist(elitist_candidate, elitist_verify, input_file, mode)

if __name__ == "__main__":
    StbASPIC().run()
