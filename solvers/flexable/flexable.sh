#!/bin/bash

# $1 FILE LOC
# $2 QUERY
# $3 SEMANTICS - not supported now

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
FLEXABLE_JAR_LOCATION="flexable-assembly-1.0.jar"

output=$(java -jar "$SCRIPT_DIR/$FLEXABLE_JAR_LOCATION" "$1" -g "$2" -i apx -s -q --da dabf --tc ta)

if [[ $output == *"YES"* ]]; then
  echo 'y'
else
  echo 'n'
fi
