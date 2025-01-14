#!/usr/bin/env bash
set -e
export CUDA_VISIBLE_DEVICES=0
export CUDA_LAUNCH_BLOCKING=1

## 新的
#python main.py \
#  --output_dir "models/onal_sequence_thumos14_decoder_layer4_kv7" \
#  --pickle_root "data/thumos14_feat" \
#  --dim_feature 4096 \
#  --history_desision 6 \
#  --history_feature 6 \
#  --epochs 17 --lr_drop 3 --gamma 0.5 \
#  --eval --resume "models/onal_sequence_thumos14_decoder_layer4_kv7/checkpoint0016.pth"

# 原来最开始的结果
python main.py \
  --output_dir "models/origin_onal_sequence_thumos14_decoder_layer4_kv7" \
  --pickle_root "data/thumos14_feat" \
  --dim_feature 4096 \
  --history_desision 6 \
  --history_feature 6 \
  --epochs 17 --lr_drop 3 --gamma 0.5 \
  --eval --resume "models/origin_onal_sequence_thumos14_decoder_layer4_kv7/checkpoint0016.pth"
