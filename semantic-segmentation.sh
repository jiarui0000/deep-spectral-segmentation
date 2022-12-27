#!/bin/bash
. ./config.sh

# extract segments
python extract/extract.py extract_multi_region_segmentations \
    --non_adaptive_num_segments $N_SEG \
    --features_dir $FEATURE_DIR \
    --eigs_dir $EIG_DIR \
    --output_dir $SEGMENT_DIR

# extract bounding boxes
python extract/extract.py extract_bboxes \
    --features_dir $FEATURE_DIR \
    --segmentations_dir $SEGMENT_DIR \
    --num_erode $N_ERODE \
    --num_dilate $N_DILATE \
    --downsample_factor $DOWNSAMPLE \
    --output_file $BBOX_FILE

# extract bounding box features
python extract/extract.py extract_bbox_features \
    --model_name $MODEL \
    --images_root $IMAGE_ROOT \
    --bbox_file $BBOX_FILE \
    --output_file $BBOX_FEATURE_FILE

# extract clusters
python extract/extract.py extract_bbox_clusters $BBOX_FEATURE_FILE $CLUSTER_FILE

# create semantic segmentations
python extract/extract.py extract_semantic_segmentations $SEGMENT_DIR $CLUSTER_FILE $SSEG_DIR