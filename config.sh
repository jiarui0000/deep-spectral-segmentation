#!/bin/bash

DATASET="VOC2012"
MODEL="dino_vits16"
MODEL_NAME=dino_vits16 
# eigen vector computation param
MATRIX="laplacian" 
K=10
# semantic seg param
DOWNSAMPLE=16 # cannot use 64, 8 tried
N_SEG=15
N_ERODE=2
N_DILATE=5

TARGET="train"
TAG=""

# file address
PROCESS_DATA_ROOT="$HOME/ra/deep-spectral-segmentation/extract/data/${TARGET}${TAG}" # modify accordingly
IMAGE_LIST="$HOME/ra/datasets/voc/VOCdevkit/VOC2012/ImageSets/Segmentation/${TARGET}.txt" # modify accordingly
IMAGE_ROOT="$HOME/ra/datasets/voc/VOCdevkit/VOC2012/JPEGImages" # modify accordingly
FEATURE_DIR="${PROCESS_DATA_ROOT}/${DATASET}/features/${MODEL}" 
EIG_DIR="${PROCESS_DATA_ROOT}/${DATASET}/eigs/${MATRIX}" 
SEGMENT_DIR="${PROCESS_DATA_ROOT}/${DATASET}/multi_region_segmentation/${MATRIX}"
BBOX_FILE="${PROCESS_DATA_ROOT}/${DATASET}/multi_region_bboxes/${MATRIX}/bboxes.pth"
BBOX_FEATURE_FILE="${PROCESS_DATA_ROOT}/${DATASET}/multi_region_bboxes/${MATRIX}/bbox_features.pth"
CLUSTER_FILE="${PROCESS_DATA_ROOT}/${DATASET}/multi_region_bboxes/${MATRIX}/bbox_clusters.pth"
SSEG_DIR="${PROCESS_DATA_ROOT}/${DATASET}/semantic_segmentation/patches/${MATRIX}/segmaps"

