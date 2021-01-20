
python3 source/preprocessing//gen_dataset_v2.py \
--path $1 \
--no_trajectory 

python3 source/preprocessing/compile_dataset_h5.py \
--path $1 \
--out_dir $2 \
--type unannotated \
$3

