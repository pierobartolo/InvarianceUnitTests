# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved

#!/bin/bash

### Default experiment ###
dim_inv=5
dim_spu=5
n_envs=3
dir_results='/results/ib-irm'
echo "Default experiment: dim_inv=${dim_inv} dim_spu=${dim_spu} n_envs=${n_envs}"

python scripts/sweep.py \
    --datasets Example3 \
    --dim_inv $dim_inv --dim_spu $dim_spu \
    --model IB-IRM \
    --n_envs $n_envs --num_model_seeds 256 --num_data_seeds 1 \
    --output_dir ${dir_results}/example3_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \
    --cluster \
    --jobs_cluster 256