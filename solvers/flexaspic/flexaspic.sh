#!/bin/bash

#$1 instance
#$2 goal

# JAR_PATH='/home/piotr/Dresden/aspic-flexdds/aspic-flexdd/target/scala-3.2.0/aspic-flexdd-0.1.1.jar'
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
FLEXASPIC_JAR_LOCATION="aspic-flexdd-0.1.1.jar"


output=$(java -jar "$SCRIPT_DIR/$FLEXABLE_JAR_LOCATION" "$1" -i aspicp -g "$2" -s -t ta -a dabf -o pf1pb2pb1pf2ob2ob1of2)

# echo $output
if [[ $output == *"YES"* ]]; then
  echo 'y'
else
  echo 'n'
fi
