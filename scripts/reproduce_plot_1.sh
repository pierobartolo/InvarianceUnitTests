# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved

#!/bin/bash

### Default experiment ###
dim_inv=5
dim_spu=5
n_envs=3
dir_results='/results/plot_1'
echo "Default experiment: dim_inv=${dim_inv} dim_spu=${dim_spu} n_envs=${n_envs}"

for (( c=21; c<= 100; c++ ))
do
    python main.py \
        --dataset Example2 \
        --model ERM\
        --dim_inv $dim_inv --dim_spu $dim_spu \
        --n_envs $n_envs --model_seed $c --hparams "random"\
        --output_dir ${dir_results}/example2_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \

done

for (( c=21; c<= 100; c++ ))
do
    python main.py \
        --dataset Example2 \
        --model IRMv1\
        --dim_inv $dim_inv --dim_spu $dim_spu \
        --n_envs $n_envs --model_seed $c --hparams "random"\
        --output_dir ${dir_results}/example2_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \

done

for (( c=21; c<= 100; c++ ))
do
    python main.py \
        --dataset Example2 \
        --model IB-IRM\
        --dim_inv $dim_inv --dim_spu $dim_spu \
        --n_envs $n_envs --model_seed $c --hparams "random" \
        --output_dir ${dir_results}/example2_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \

done

for (( c=21; c<= 100; c++ ))
do
    python main.py \
        --dataset Example2 \
        --model IGA\
        --dim_inv $dim_inv --dim_spu $dim_spu \
        --n_envs $n_envs --model_seed $c\
        --output_dir ${dir_results}/example2_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \

done

#for (( c=1; c<= 5; c++ ))
#do
#    python main.py \
#        --dataset Example2 \
#        --model ANDMask\
#        --dim_inv $dim_inv --dim_spu $dim_spu --num_iterations 50 \
#        --n_envs $n_envs --data_seed $c\
#        --output_dir ${dir_results}/example2_nenvs=${n_envs}_dinv=${dim_inv}_dspu=${dim_spu} \

#done