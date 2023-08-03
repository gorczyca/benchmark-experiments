#!/bin/bash

#$1 instance
#$2 goal

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
TWEETY_JAR_LOCATION="tweetywrapper.jar"

output=$(java -jar "$SCRIPT_DIR/$TWEETY_JAR_LOCATION" "$1" "$2")

echo $output

# run ./tweety.sh rand_10_30_3_0.4__82_easy.aspic a0