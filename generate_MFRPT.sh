for dataset in {bv,heck,cl}
do
fairseq-generate data \
              --task multilingual_translation --lang-pairs bv_src-bv_tgt,heck_src-heck_tgt,cl_src-cl_tgt \
	      --source-lang $dataset\_src --target-lang $dataset\_tgt \
              --path checkpoints/MFRPT/checkpoint_best.pt \
	      --beam 10 \
	      --nbest 10 \       
	      --batch-size 50 \  
              --results-path ./MFRPT/;
done
