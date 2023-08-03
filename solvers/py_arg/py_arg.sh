#!/bin/bash

#$1 instance
#$2 goal

# JAR_PATH='/home/piotr/Dresden/aspic-flexdds/aspic-flexdd/target/scala-3.2.0/aspic-flexdd-0.1.1.jar'
CURRENT_DIR="$(dirname "$(readlink -f "$0")")"
FLEXASPIC_JAR_LOCATION="aspic-flexdd-0.1.1.jar"

PYTHON_DIR="$CURRENT_DIR/pyarg_env/bin/python"

output=$("$PYTHON_DIR" "$CURRENT_DIR/main.py" "$1" "$2")
echo $output

# echo $output
# if [[ $output == *"YES"* ]]; then
#   echo 'y'
# else
#   echo 'n'
# fi

# ./pyarg.sh /home/piotr/Dresden/aspic-flexdds/random_0_pyarg/rand_5_10_2_0.2__14.aspic -a2
# ./pyarg.sh /lustre/ssd/ws/pigo271b-flex-ws/2_instances/thimm/random_pyarg/rand_5_10_2_0.2__14.aspic -a2
