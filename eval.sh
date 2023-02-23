#!/bin/bash
# load config
. ./config.sh

python semantic-segmentation/eval.py val_segments_dir=$SSEG_DIR