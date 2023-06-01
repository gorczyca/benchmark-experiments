#!/usr/bin/env bash



# $1 = instance
# $2 = goal
# TODO: set this clingo dir only
CLINGO_DIR="/home/piotr/anaconda3/envs/potassco/bin/clingo"


ASP_FOR_ASPIC_DIR="$(dirname "$(readlink -f "$0")")"
# ASP_FOR_ASPIC_DIR="/home/piotr/Dresden/aspic-flexdds/experiments/solvers/aspforaspic"
SEMANTICS="adm-aspic.dl"


# create query file
echo "query($2)." > ${ASP_FOR_ASPIC_DIR}/query.dl

# ${CLINGO_DIR} ${ASP_FOR_ASPIC_DIR}/no_preferences_encodings/${SEMANTICS} ${INSTANCES_DIR}/$1 ${ASP_FOR_ASPIC_DIR}/query.dl # --quiet=3 | grep 'SATISFIABLE\|CPU Time'
# ${CLINGO_DIR} ${ASP_FOR_ASPIC_DIR}/no_preferences_encodings/${SEMANTICS} $1 ${ASP_FOR_ASPIC_DIR}/query.dl 0
${CLINGO_DIR} ${ASP_FOR_ASPIC_DIR}/no_preferences_encodings/${SEMANTICS} $1 ${ASP_FOR_ASPIC_DIR}/query.dl 1

# solvers/aspforaspic/aspforaspic_output.sh /home/piotr/Dresden/aspic-flexdds/experiments/instances/contradictories/aspforaspic/n=300_rps=2_spb=15_cps=1_a=0.05_p=0.25_dr=0.25_ac=0.25_actr=0.5_drc=0.25.lp s70

# solvers/aspforaspic/aspforaspic_output.sh /home/piotr/Dresden/aspic-flexdds/experiments/instances/contradictories/aspforaspic/n=400_rps=2_spb=15_cps=1_a=0.05_p=0.25_dr=0.25_ac=0.25_actr=0.5_drc=0.25.lp s225



# n=300_rps=2_spb=15_cps=1_a=0.05_p=0.25_dr=0.25_ac=0.25_actr=0.5_drc=0.25.lp,s70,n,3.43

# n=400_rps=2_spb=15_cps=1_a=0.05_p=0.25_dr=0.25_ac=0.25_actr=0.5_drc=0.25.lp,s225,n,1.09
