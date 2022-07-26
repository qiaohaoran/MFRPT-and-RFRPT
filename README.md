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
💡 python -c "import fairseq;print(fairseq.__**file__**)" #get your fairseq path eg. /XXX/…./fairseq-main/fairseq/

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

bash makedata.sh

bash run.sh

bash generate.sh
