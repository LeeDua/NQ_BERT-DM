python src_nq/create_examples.py \
	--input_pattern "./natural_questions/v1.0/train/nq-train-*.jsonl.gz" \
	--vocab_file ./bert-base-uncased-vocab.txt \
	--do_lower_case \
	--output_dir ./natural_questions/nq_0.03/ \
	--num_threads 28 --include_unknowns 0.03 --max_seq_length 512 --doc_stride 128