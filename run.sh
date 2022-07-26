mkdir -p checkpoints/multilingual_transformer
fairseq-train data \
    --max-epoch 1500 \
    --task multilingual_translation --lang-pairs bv_src-bv_tgt,heck_src-heck_tgt,cl_src-cl_tgt \
    --arch multilingual_transformer_iwslt_de_en \
    --share-encoders \
    --share-encoder-embeddings \
    --optimizer adam --adam-betas '(0.997, 0.98)' \
    --lr 0.001 --lr-scheduler inverse_sqrt \
    --warmup-updates 2000 --warmup-init-lr '1e-05' \
    --label-smoothing 0.0 --criterion label_smoothed_cross_entropy \
    --dropout 0.3 --weight-decay 0.0001 \
    --save-dir checkpoints \
    --max-tokens 6144 \
    --update-freq 8 \
    --keep-last-epochs 2 \
    --tensorboard-logdir /tf_logs
