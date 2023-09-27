#!/bin/bash
torchrun --nproc-per-node $1 \
        run_bridgetower.py \
	--per_device_train_batch_size=$2 \
	--output_dir /tmp/bridgetower_test \
	--model_name_or_path BridgeTower/bridgetower-large-itm-mlm-itc \
	--dataset_name jmhessel/newyorker_caption_contest \
	--dataset_config_name matching \
	--image_column image \
        --caption_column image_description \
	--remove_unused_columns=False \
	--do_train \
        --fp16 \
	--fp16_opt_level=O2 \
	--half_precision_backend=apex \
	--optim="adamw_apex_fused" \
	--num_train_epochs 5 \
	--learning_rate="1e-5" \
	--overwrite_output_dir \
	--logging_steps 10 \
	--save_steps 5000 \
	--dataloader_num_workers=2
