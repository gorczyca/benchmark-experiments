#!/bin/bash

#$1 instance
#$2 goal
JAVA="java"
# JAVA="/lustre/ssd/ws/pigo271b-flex-ws/jdk/jdk-20.0.2/bin/java"
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
TWEETY_JAR_LOCATION="Arg2PWrapper-1.0-SNAPSHOT.jar"

output=$("$JAVA" -jar "$SCRIPT_DIR/$TWEETY_JAR_LOCATION" "$1" "$2")

echo $output

# run ./arg2p.sh /home/piotr/Dresden/aspic-flexdds/aaai/ds_aspic2019/random_0_arg2p/rand_5_10_2_0.2__0.aspic a4
