if [ $1 == "resnet" ]; then
python3 source/ronin_resnet.py \
--mode test \
--test_list lists/list_test_unseen.txt \
--root_dir datasets/RoNIN_dataset/unseen_subjects_test_set \
--out_dir output \
--model_path pretrained_models/ronin_resnet/checkpoint_gsn_latest.pt \
--fast_test

elif [ $1 == "lstm_bi" ]; then
python3 source/ronin_lstm_tcn.py \
test \
--type lstm_bi \
--test_list lists/list_test_unseen.txt \
--data_dir datasets/RoNIN_dataset/unseen_subjects_test_set \
--config pretrained_models/ronin_lstm/config.json \
--model_path pretrained_models/ronin_lstm/checkpoints/ronin_lstm_checkpoint.pt \
--out_dir output 
# --fast_test

elif [ $1 == "tcn" ]; then
python3 source/ronin_lstm_tcn.py \
test \
--type tcn \
--test_list lists/list_test_unseen.txt \
--data_dir datasets/RoNIN_dataset/unseen_subjects_test_set \
--model_path pretrained_models/ronin_tcn/checkpoints/ronin_tcn_checkpoint.pt  \
--out_dir output \
--fast_test

elif [ $1 == "heading" ]; then
python3 source/ronin_body_heading.py \
test \
--test_list lists/list_test_unseen.txt \
--data_dir datasets/RoNIN_dataset/unseen_subjects_test_set \
--config pretrained_models/ronin_body_heading/config.json \
--model_path pretrained_models/ronin_body_heading/checkpoints/ronin_body_heading.pt \
--out_dir output 

elif [ $1 == "my_lstm" ]; then
python3 source/ronin_lstm_tcn.py \
test \
--type lstm_bi \
--test_list lists/$2 \
--data_dir my_dataset \
--config pretrained_models/ronin_lstm/config.json \
--model_path pretrained_models/ronin_lstm/checkpoints/ronin_lstm_checkpoint.pt \
--out_dir my_output_lstm/ \
--show_plot


elif [ $1 == "my_heading" ]; then
python3 source/ronin_body_heading.py \
test \
--test_list lists/$2 \
--data_dir my_dataset \
--config pretrained_models/ronin_body_heading/config.json \
--model_path pretrained_models/ronin_body_heading/checkpoints/ronin_body_heading.pt \
--out_dir my_output_heading/ \


else
	echo "no valid argument";
fi;