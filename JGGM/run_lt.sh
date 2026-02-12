#!/bin/bash

# 定义输出文件
output_file="all_results_lt.txt"

# DBLP 数据集
echo "Running models for dblp dataset"
python hgcond_main.py --dataset dblp --cond 0.001 2>&1 | tee -a $output_file
python hgcond_main.py --dataset dblp --cond 0.005 2>&1 | tee -a $output_file
python hgcond_main.py --dataset dblp --cond 0.01 2>&1 | tee -a $output_file
python hgcond_main.py --dataset dblp --cond 0.02 2>&1 | tee -a $output_file

# IMDB 数据集
echo "Running models for imdb dataset"
python hgcond_main.py --dataset imdb --cond 0.001 2>&1 | tee -a $output_file
python hgcond_main.py --dataset imdb --cond 0.005 2>&1 | tee -a $output_file
python hgcond_main.py --dataset imdb --cond 0.01 2>&1 | tee -a $output_file
python hgcond_main.py --dataset imdb --cond 0.02 2>&1 | tee -a $output_file

# # ACM 数据集
# echo "Running models for acm dataset"
# python hgcond_main.py --dataset acm --cond 0.001 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset acm --cond 0.005 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset acm --cond 0.01 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset acm --cond 0.02 2>&1 | tee -a $output_file

# # Freebase 数据集
# echo "Running models for freebase dataset"
# python hgcond_main.py --dataset freebase --cond 0.001 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset freebase --cond 0.005 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset freebase --cond 0.01 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset freebase --cond 0.02 2>&1 | tee -a $output_file

# # AMiner 数据集
# echo "Running models for aminer dataset"
# python hgcond_main.py --dataset aminer --cond 0.0001 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset aminer --cond 0.0005 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset aminer --cond 0.001 2>&1 | tee -a $output_file
# python hgcond_main.py --dataset aminer --cond 0.0015 2>&1 | tee -a $output_file

echo "All models processed."
