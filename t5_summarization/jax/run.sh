python3 run_summarization_flax.py \
	--model_name_or_path north/t5_base_NCC_lm \
	--dataset_name navjordj/VG_summarization \
    --text_column article \
    --summary_column ingress \
	--source_prefix "oppsummer: " \
	--do_train \
	--do_eval \
	--num_train_epochs 10 \
	--learning_rate 5e-5 --warmup_steps 0 \
	--per_device_train_batch_size 32 \
	--per_device_eval_batch_size 8 \
	--overwrite_output_dir \
	--max_source_length 512 \
 	--max_target_length 128 \
    --dtype float16 \
    --output_dir t5_base_VG