#!/bin/bash

. /opt/conda/etc/profile.d/conda.sh && conda activate alpa

python3 run_clm_flax.py \
    --output_dir="./norwegian-gpt2" \
    --model_type="gpt2" \
    --config_name="./norwegian-gpt2" \
    --tokenizer_name="./norwegian-gpt2" \
    --dataset_name="oscar" \
    --dataset_config_name="unshuffled_deduplicated_no" \
    --do_train --do_eval \
    --block_size="512" \
    --per_device_train_batch_size="96" \
    --per_device_eval_batch_size="96" \
    --num_micro_batches="4" \
    --dtype="float16" \
    --learning_rate="1e-3" --warmup_steps="1000" \
    --adam_beta1="0.9" --adam_beta2="0.98" --weight_decay="0.01" \
    --overwrite_output_dir \
    --num_train_epochs="20" \
    --logging_steps="100" \
    --save_steps="2500" \
    --eval_steps="2500"