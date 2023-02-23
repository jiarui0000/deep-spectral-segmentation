#!/bin/bash
# load config
. ./config.sh

python semantic-segmentation/train.py \
lr=2e-4 \
train_segments_dir=$SSEG_DIR \
matching="\"[(0, 0), (1, 2), (2, 12), (3, 20), (4, 15), (5, 7), (6, 1), (7, 13), (8, 16), (9, 4), (10, 19), (11, 8), (12, 6), (13, 9), (14, 18), (15, 5), (16, 3), (17, 10), (18, 17), (19, 14), (20, 11)]\""

# python semantic-segmentation/train.py \
#     lr=2e-4 \
#     data.loader.batch_size=96 \
#     train_segments_dir=$SSEG_DIR \
#     matching="\"[(0, 0), (1, 2), (2, 12), (3, 20), (4, 15), (5, 7), (6, 1), (7, 13), (8, 16), (9, 4), (10, 19), (11, 8), (12, 6), (13, 9), (14, 18), (15, 5), (16, 3), (17, 10), (18, 17), (19, 14), (20, 11)]\""
