#!/bin/bash

HOST_ALPA_PATH=/home/cc/alpa
HUGGING_FACE_CACHE=/home/cc/alpa/examples/gpt2/huggingface_cache

docker run --gpus all \
    -v $HUGGING_FACE_CACHE:/root/.cache/huggingface \
    -v $HOST_ALPA_PATH:/build/alpa \
    --net=host \
    --rm --shm-size=100gb \
    -it run-alpa-image