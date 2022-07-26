export data_path=./raw_data
fairseq-preprocess --source-lang src --target-lang tgt \
	--trainpref ../all \
	--joined-dictionary \
	--destdir concat
fairseq-preprocess --source-lang k_src --target-lang k_tgt \
    --trainpref $data_path/lang-bv/train \
    --validpref $data_path/lang-bv/valid \
    --testpref $data_path/lang-bv/test \
    --srcdict concat/dict.src.txt \
    --tgtdict concat/dict.tgt.txt \
    --destdir data ;
