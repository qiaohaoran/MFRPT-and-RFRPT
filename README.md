# README

> Transformer-based Multi-task Learning for Predicting Distinct Reactions under Low-resource Circumstance.
> 

# Requirements

linux 

- PyTorch version ≥ 1.5.0
- Python version ≥ 3.6

# Installation

pip install fairseq 

pip install tensorboardX # torch visualization support

git clone $thispath

<aside>
💡 python -c "import fairseq;print(fairseq.__file__)" #get your fairseq path eg. /XXX/…./fairseq-main/fairseq/

</aside>

cd $thispath

cp ./label_smoothed_entropy.py $your_fairseq_path/criterions/    #cover the label_smoothed_entropy.py 

# Check

python -c 'import torch;print(torch.cuda.is_available())’

<aside>
💡 if return 
True that means you can train model with GPU accelerate
,False that means your cuda module is not available
,No module named 'torch’ that means your pytorch have not been installed succeed

</aside>

# How to recurring the paper code
#The following steps implement the results of the heck dataset on RFRPT
#first we should make dict for model, so we
mkdir -p raw_data/concat

cat raw_data/lang-heck/* > raw_data/concat/en.src ;
cat raw_data/lang-heck/* > raw_data/concat/en.tgt  # we just use this file to make a dict

bash makedata_RFRPT_heck.sh #before this step pls make sure no filename 'data' and 'concat' in curring path

bash run_RFRPT_heck.sh 
#during the train ,you can run `tensorboard --logdir ./tf_log` to watch model training (pip install tensorboardX)

bash generate_RFRPT_heck.sh # run this you can get a 'result' file with txt 


#The following steps implement the results on MFRPT

mkdir -p raw_data/concat

cat raw_data/lang*/* > raw_data/concat/en.src ;
cat raw_data/lang*/* > raw_data/concat/en.tgt

bash makedata_MFRPT.sh

bash run_MFRPT.sh

bash generate_MFRPT.sh


