#!/bin/bash

mkdir data/alignment
cd data/alignment

wget https://hanoverprod.z21.web.core.windows.net/med_llava/alignment/llava_med_alignment_500k.json

cd ..

mkdir instruct
cd instruct

cd ..

wget https://hanoverprod.z21.web.core.windows.net/med_llava/llava_med_image_urls.jsonl
mkdir pmc_articles
mkdir images

cd ..

pip install tqdm
python llava/data/download_images.py --input_path data/llava_med_image_urls.jsonl --pmc_output_path data/pmc_articles/ --images_output_path data/images
