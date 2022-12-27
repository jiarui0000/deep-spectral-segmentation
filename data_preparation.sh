#!/bin/bash
. ./config.sh

# feature extraction
python extract/extract.py extract_features \
    --images_list $IMAGE_LIST \
    --images_root $IMAGE_ROOT \
    --output_dir $FEATURE_DIR \
    --model_name $MODEL_NAME \
    --batch_size 1


# eigenvector computation
python extract/extract.py extract_eigs \
    --images_root $IMAGE_ROOT \
    --features_dir $FEATURE_DIR \
    --which_matrix $MATRIX \
    --output_dir $EIG_DIR \
    --K $K
