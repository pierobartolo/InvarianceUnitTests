# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved

#!/bin/bash

### Default experiment ###
dim_inv=5
dim_spu=15
n_envs=10
dir_results='/results'
echo "Default experiment: dim_inv=${dim_inv} dim_spu=${dim_spu} n_envs=${n_envs}"

python scripts/sweep.py \
    --datasets Example3 \
    --dim_inv $dim_inv --dim_spu $dim_spu \
    --n_envs $n_envs --num_model_seeds 200 --num_data_seeds 5 \
    --output_dir ${dir_results}/example3.1_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \
    --cluster \
    --jobs_cluster 200
