#!/bin/bash
# load config
. ./config.sh

python semantic-segmentation/eval.py segments_dir=$SSEG_DIR