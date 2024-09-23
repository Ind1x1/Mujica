#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

CUSTOM_DEEPSPEED_PATH="$SCRIPT_DIR/deepspeed"

if [ -d "$CUSTOM_DEEPSPEED_PATH" ]; then
    echo "Setting PYTHONPATH to use custom DeepSpeed from $CUSTOM_DEEPSPEED_PATH"
    export PYTHONPATH="$CUSTOM_DEEPSPEED_PATH:$PYTHONPATH"
else
    echo "Custom DeepSpeed path does not exist: $CUSTOM_DEEPSPEED_PATH"
    exit 1
fi
