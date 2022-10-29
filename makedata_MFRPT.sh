export data_path=./raw_data
fairseq-preprocess --source-lang src --target-lang tgt \
	--trainpref $data_path/concat/en \
	--joined-dictionary \
	--destdir concat
for dataset in {bv,heck,cl}
do
fairseq-preprocess --source-lang $dataset\_src --target-lang $dataset\_tgt \
    --trainpref $data_path/lang-$dataset/train \
    --validpref $data_path/lang-$dataset/valid \
    --testpref $data_path/lang-$dataset/test \
    --srcdict concat/dict.src.txt \
    --tgtdict concat/dict.tgt.txt \
    --destdir data ;
done
