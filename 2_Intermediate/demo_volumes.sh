#!/bin/bash

# Absolute path to this script, e.g. /home/user/2_Intermediate/demo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/2_Intermediate
SCRIPTPATH=$(dirname "$SCRIPT")

docker run --volume $SCRIPTPATH/data:/data --rm --tty --interactive ubuntu bash