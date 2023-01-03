#!/bin/bash
# load config
. ./config.sh

python semantic-segmentation/train.py \
    lr=2e-4 \
    data.loader.batch_size=96 \
    segments_dir_train=$SSEG_DIR \
    segments_dir_val="$HOME/ra/deep-spectral-segmentation/extract/data/val/${DATASET}/semantic_segmentation/patches/${MATRIX}/segmaps" \
    matching="\"[(0, 0), (1, 13), (2, 14), (3, 6), (4, 1), (5, 16), (6, 10), (7, 8), (8, 20), (9, 3), (10, 12), (11, 9), (12, 5), (13, 15), (14, 18), (15, 19), (16, 4), (17, 7), (18, 11), (19, 17), (20, 2)]\""