#!/usr/bin/env bash

# call run_asp.sh <instance> <goal>
# e.g.:
# run_asp.sh exp_acyclic_depvary_step10_batch_yyy01.pl w2 adm 1

# $1 = instance
# $2 = goal
# $3 = semantics: adm | stb | com
# $4 = enumerate defences (1) / just show satisfiabilit (0)

# TODO: set the paths here
# ASP_FOR_ABA_DIR="/home/piotr/Dresden/flexABle/aba-tests/solvers/aspforaba"
ASP_FOR_ABA_DIR="/home/piotr/test/newest_ubuntu_data/Dresden/flexABle/aba-tests/solvers/aspforaba"
# INSTANCES_DIR="/home/piotr/Dresden/flexABle/aba-tests/instances/aspforaba"
# CLINGO_DIR="/home/piotr/system/miniconda3/envs/potassco/bin/clingo"
CLINGO_DIR="/home/piotr/anaconda3/envs/potassco/bin/clingo"
SEMANTICS="adm-aba.dl"


case $3 in
  stb)
    SEMANTICS="stb-aba.dl"
    ;;

  com)
    SEMANTICS="com-aba.dl"
    ;;

  *)
    SEMANTICS="adm-aba.dl"
    ;;
esac


# create query file
echo "query($2)." > ${ASP_FOR_ABA_DIR}/query.dl

if [[ $4 -eq 0 ]]
then
  # get info: SAT or not
  ${CLINGO_DIR} ${ASP_FOR_ABA_DIR}/aspforaba_src/first_level_encodings/${SEMANTICS} ${ASP_FOR_ABA_DIR}/cred-aba.dl $1 ${ASP_FOR_ABA_DIR}/query.dl --quiet=3 | grep 'SATISFIABLE\|CPU Time'
else
  # show defences
  ${CLINGO_DIR} ${ASP_FOR_ABA_DIR}/aspforaba_src/first_level_encodings/${SEMANTICS} ${ASP_FOR_ABA_DIR}/cred-aba.dl ${ASP_FOR_ABA_DIR}/project.dl $$1 ${ASP_FOR_ABA_DIR}/query.dl 0 | grep -A 1 'Answer' | grep -v ^'Answer'
fi
