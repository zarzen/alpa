
```
# clone the alpa fork to $HOME

# start container (modify the path in the script if is needed)
# 
./scripts/alpa_container_start.sh

# prepare configs and tokenizer for training
# NOTE: modify the create_config.py for different model config
./scripts/prepare_training.sh

# start ray
./scripts/ray_head_start.sh

# NOTE: need to contect other containers to this head node

# run the training on head node

./scripts/run_gpt2.sh

```