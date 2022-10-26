#!/bin/bash
# exec script in the path `alpa/exmaples/gpt2`

. /opt/conda/etc/profile.d/conda.sh && conda activate alpa

# python train_tokenizer.py

# NOTE run on head node is enough
python create_config.py