# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved

#!/bin/bash


dim_inv=5
n_envs=10
dir_results='/results'
echo "Varying spurious dimensions: dim_spu"
for dim_spu in 4 8 16 32 64 128  
do
    echo "dim_inv=${dim_inv} dim_spu=${dim_spu} n_envs=${n_envs}"
    python3 scripts/sweep.py \
        --datasets  Example3 \
        --dim_inv $dim_inv --dim_spu $dim_spu \
        --n_envs $n_envs \
        --num_data_seeds 5 --num_model_seeds 150 \
        --output_dir $dir_results/dimspu/sweep_linear_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \
        --cluster \
        --jobs_cluster 200
done 