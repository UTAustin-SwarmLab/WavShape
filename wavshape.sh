#!/bin/bash

export CUDA_VISIBLE_DEVICES=3

python wavshape.py encoder.encoder_model_name="DenseEncoder3" dataset="commonvoice" \
                    dataset.train_label1_path=data/commonvoice/train_gender_labels.npy\
                    dataset.train_label2_path=data/commonvoice/train_age_labels.npy \
                    dataset.test_label1_path=data/commonvoice/test_gender_labels.npy \
                    dataset.test_label2_path=data/commonvoice/test_age_labels.npy \
                    simulation.mine.mine_trainer_patience=100 \