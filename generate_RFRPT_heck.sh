fairseq-generate data \
              --task multilingual_translation --lang-pairs heck_src-heck_tgt \
	      --source-lang heck_src --target-lang heck_tgt \
              --path checkpoints/RFRPT_heck/checkpoint_best.pt \
	      --beam 10 \
	      --nbest 10 \       #this top - n 
	      --batch-size 50 \  #if model underfitting,beam search space will be very big and get a OOM(GPU) 
              --results-path ./heck_RFRPT/;
