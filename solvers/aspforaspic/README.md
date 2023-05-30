# ASP encodings and algorithms for reasoning in ASPIC+ with and without preferences

Author: Tuomo Lehtonen, University of Helsinki.
For inquiries, please contact: firstname.lastname@helsinki.fi.

## Reference
For more information and citing, please refer to:

(2020) Tuomo Lehtonen, Johannes P. Wallner, Matti Järvisalo. [An Answer Set Programming Approach to Argumentative Reasoning in the ASPIC+ Framework](https://doi.org/10.24963/kr.2020/63). KR 2020: 636-646

(2022) Tuomo Lehtonen, Johannes P. Wallner, Matti Järvisalo. Computing Stable Conclusions under the Weakest-Link Principle in the ASPIC+ Argumentation Formalism. KR 2022.

In particular, in 2020 we introduced ASP-based algorithms for the following semantics of ASPIC+ without preferences:

- stable
- complete
- admissible
- preferred using asprin

We studied ASPIC+ with preferences in 2022. We focused on stable semantics with the preferences using the weakest link principle and elitist ordering, providing a CEGAR-style algorithm using incremental ASP solving

## Requirements

[Clingo](https://github.com/potassco/clingo) is required for every semantics. The encodings and algorithms are tested with clingo 5.4.0. Where applicable, the programs are tested with Python 3.9.4. In all of the following, the ASPIC+ instance is assumed to be given in the file input.apx in the format specified below.

## Admissible, complete, and stable semantics for ASPIC+ without preferences
The encodings can be found in the subdirectory no_preferences_encodings.

Given the encoding sigma-aspic.dl for semantics sigma, one can solve the instance with clingo:

To find a sigma-assumption set: `clingo sigma-aspic.dl input.apx`

To find all sigma-assumption sets: `clingo sigma-aspic.dl input.apx 0`

To reason credulously or skeptically, additionally uncomment the appropriate line at the end of sigma-aspic.dl and provide a queried sentence s by adding the line "query(s)." to input.apx (or sigma-aspic.dl).
For credulous acceptance, sigma-assumption sets are then provided, if they exist.
For skeptical acceptance, a counterexample is attempted to be found, meaning that s is skeptically accepted iff the call is unsatisfiable.

## Preferred semantics for ASPIC+ without preferences
The optimization framework [asprin](https://github.com/potassco/asprin), which extends clingo, is required. 

To find one preferred assumption set: `asprin prf-aspic.dl input.apx`

To find all preferred assumption set: `asprin prf-aspic.dl input.apx 0`

To reason skeptically, provide the queried sentence s by adding the line "query(s)." to input.apx and call 
`asprin prf-aspic.dl input.apx --meta=query`.
The queried sentence s is skeptically accepted iff the call is unsatisfiable.

## Stable semantics for ASPIC+ with preferences (weakest link, elitist)
The clingo module for Python is required. 
Code for these can be found in the directory preferences_stb_elitist_weakestlink.

Run `stb-algorithm.py input.apx mode [query]` where mode is 'cred', 'skept', 'enum', or 'findone', for credulous reasoning, skeptical reasoning, assumption set enumeration, and finding one assumption set, respectively. In case of credulous or skeptical reasoning, also provide a queried sentence.

## Input format
The following rules specify an ASPIC framework.

`axiom(a).` for each axiom a.

`premise(a).` for each premise a.

`contrary(a,x).` when x is the (asymmetric) contrary of a.

`contradictory(x,nx).` when x and nx are (symmetric) contradictories.

`head(i,x).` when x is the head of the defeasible rule with index i.

`body(i,x).` when x is contained in the body of the defeasible rule with index i.

`strict_head(i,x).` when x is the head of the strict rule with index i.

`strict_body(i,x).` when x is contained in the body of the strict rule with index i.

For ASPIC+ with preferences:
`preferred(a,b)` when a is (not necessarily strictly) preferred to b. Here a and b must be premises or indices of defeasible rules.
