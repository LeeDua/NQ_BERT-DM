# python -u -m torch.distributed.launch --nproc_per_node=4 --master_addr 127.0.0.1 --master_port 9527 ./src_nq/run.py \
python -u ./src_nq/run.py \
	--my_config ./configs/config.json \
	--feature_path ./natural_questions/nq_0.03/ \
	--train_pattern "./natural_questions/v1.0/train/nq-train-06.jsonl.gz" \
	--test_pattern "./natural_questions/v1.0/dev/nq-dev-00.jsonl.gz" \
	--model_dir ./bert_pretrained \
	--output_dir ./checkpts \
	--do_train --do_predict --train_batch_size 16 --predict_batch_size 16 \
	--learning_rate 2e-5 --num_train_epochs 1