#!/usr/bin/env bash

# call run_asp.sh <instance> <goal>
# e.g.:
# run_asp.sh exp_acyclic_depvary_step10_batch_yyy01.pl w2 adm 1

# TODO: set only this here
CLINGO_DIR="/home/piotr/anaconda3/envs/potassco/bin/clingo"

# $1 = instance
# $2 = goal
# $3 = semantics: adm | stb | com
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# TODO: set the paths here
# ASP_FOR_ABA_DIR="/home/piotr/Dresden/flexABle/aba-tests/solvers/aspforaba"
# ASP_FOR_ABA_DIR="/home/piotr/test/newest_ubuntu_data/Dresden/flexABle/aba-tests/solvers/aspforaba"
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
echo "query($2)." > ${SCRIPT_DIR}/query.dl

output=$(${CLINGO_DIR} ${SCRIPT_DIR}/aspforaba_src/first_level_encodings/${SEMANTICS} ${SCRIPT_DIR}/cred-aba.dl $1 ${SCRIPT_DIR}/query.dl --quiet=3)

if [[ $output == *"UNSATISFIABLE"* ]]; then
  echo 'n'
else
  echo 'y'
fi