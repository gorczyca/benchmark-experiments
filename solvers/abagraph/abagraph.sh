#!/usr/bin/env bash

# $1 = full file path
# $2 = goal

# TODO: set these
# GRAPHARG="/home/piotr/Dresden/aspic-flexdds/experiments/solvers/abagraph/code/abagraph.pl"


# TODO: set this only
SICSTUS="/usr/local/sicstus4.8.0/bin/sicstus"

PARENT_DIR="$(dirname "$(readlink -f "$0")")"
GRAPHARG="code/abagraph.pl"

# Extract the location (parent folder) of the file
INSTANCES_DIR=$(dirname "$1")

# Extract the file name without extension
FILENAME=$(basename "$1")
FILENAME_WO_EXTENSION="${FILENAME%.*}"


GOAL="set_opt(frameworkdir,'${INSTANCES_DIR}/'),loadf($FILENAME_WO_EXTENSION),set_ab,script_derive($2),halt."

# echo $GOAL

# output=$(${SICSTUS} -l ${GRAPHARG} --noinfo --nologo --goal "${GOAL}")
output=$(${SICSTUS} -l "$PARENT_DIR/$GRAPHARG" --noinfo --nologo --goal "${GOAL}")

if [[ $output == *"solution"* ]]; then
  echo 'y'
else
  echo 'n'
fi

# most likely outputs "solution" if there is one

# file path
#/home/piotr/Dresden/aspic-flexdds/other_solvers/abagraph/abagraph/examples/a13.pl c1