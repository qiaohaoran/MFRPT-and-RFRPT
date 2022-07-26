fairseq-generate data \
              --task multilingual_translation --lang-pairs k_src-k_tgt \
              --source-lang k_src --target-lang k_tgt \
              --path checkpoints/checkpoint_best.pt \
	      --beam 10 \
              --results-path results;

