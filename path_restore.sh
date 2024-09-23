#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

CUSTOM_DEEPSPEED_PATH="$SCRIPT_DIR/deepspeed"

echo "Restoring original DeepSpeed (removing custom PYTHONPATH)"
export PYTHONPATH=$(echo $PYTHONPATH | sed "s|$CUSTOM_DEEPSPEED_PATH:||g")

python "$@"
