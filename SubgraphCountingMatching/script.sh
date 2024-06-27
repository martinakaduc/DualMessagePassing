python train.py \
    --graph_dir ../../xNeuSM/data_processed/COX2 \
    --train_key train_keys.pkl \
    --test_key test_keys.pkl \
    --save_data_dir data/COX2 \
    --save_model_dir dumps/COX2 \
    --hid_dim 64 --node_pred True --edge_pred False \
    --match_weights node \
    --enc_net Multihot --enc_base 2 \
    --emb_net Equivariant --share_emb_net True \
    --rep_net DMPNN \
    --rep_num_pattern_layers 3 --rep_num_graph_layers 3 \
    --rep_residual True --rep_dropout 0.0 --share_rep_net True \
    --pred_net SumPredictNet --pred_hid_dim 64 --pred_dropout 0.0 \
    --max_ngv 100 --max_nge 1000 --max_ngvl 8 --max_ngel 2 \
    --train_grad_steps 1 --train_batch_size 256 \
    --train_log_steps 1000 --eval_batch_size 256 \
    --lr 1e-3 --train_epochs 30 \
    --seed 0 --gpu_id 0


python train.py \
    --graph_dir ../../xNeuSM/data_processed/COX2_MD \
    --train_key train_keys.pkl \
    --test_key test_keys.pkl \
    --save_data_dir data/COX2_MD \
    --save_model_dir dumps/COX2_MD \
    --hid_dim 64 --node_pred True --edge_pred False \
    --match_weights node \
    --enc_net Multihot --enc_base 2 \
    --emb_net Equivariant --share_emb_net True \
    --rep_net DMPNN \
    --rep_num_pattern_layers 3 --rep_num_graph_layers 3 \
    --rep_residual True --rep_dropout 0.0 --share_rep_net True \
    --pred_net SumPredictNet --pred_hid_dim 64 --pred_dropout 0.0 \
    --max_ngv 100 --max_nge 1000 --max_ngvl 7 --max_ngel 2 \
    --train_grad_steps 1 --train_batch_size 256 \
    --train_log_steps 1000 --eval_batch_size 256 \
    --lr 1e-3 --train_epochs 30 \
    --seed 0 --gpu_id 0


python train.py \
    --graph_dir ../../xNeuSM/data_processed/KKI \
    --train_key train_keys.pkl \
    --test_key test_keys.pkl \
    --save_data_dir data/KKI \
    --save_model_dir dumps/KKI \
    --hid_dim 64 --node_pred True --edge_pred False \
    --match_weights node \
    --enc_net Multihot --enc_base 2 \
    --emb_net Equivariant --share_emb_net True \
    --rep_net DMPNN \
    --rep_num_pattern_layers 3 --rep_num_graph_layers 3 \
    --rep_residual True --rep_dropout 0.0 --share_rep_net True \
    --pred_net SumPredictNet --pred_hid_dim 64 --pred_dropout 0.0 \
    --max_ngv 100 --max_nge 1000 --max_ngvl 91 --max_ngel 2 \
    --train_grad_steps 1 --train_batch_size 256 \
    --train_log_steps 1000 --eval_batch_size 256 \
    --lr 1e-3 --train_epochs 30 \
    --seed 0 --gpu_id 0

python train.py \
    --graph_dir ../../xNeuSM/data_processed/DBLP-v1 \
    --train_key train_keys.pkl \
    --test_key test_keys.pkl \
    --save_data_dir data/DBLP-v1 \
    --save_model_dir dumps/DBLP-v1 \
    --hid_dim 64 --node_pred True --edge_pred False \
    --match_weights node \
    --enc_net Multihot --enc_base 2 \
    --emb_net Equivariant --share_emb_net True \
    --rep_net DMPNN \
    --rep_num_pattern_layers 3 --rep_num_graph_layers 3 \
    --rep_residual True --rep_dropout 0.0 --share_rep_net True \
    --pred_net SumPredictNet --pred_hid_dim 64 --pred_dropout 0.0 \
    --max_ngv 100 --max_nge 1000 --max_ngvl 40 --max_ngel 2 \
    --train_grad_steps 1 --train_batch_size 256 \
    --train_log_steps 1000 --eval_batch_size 256 \
    --lr 1e-3 --train_epochs 30 \
    --seed 0 --gpu_id 0

python train.py \
    --graph_dir ../../xNeuSM/data_processed/DHFR \
    --train_key train_keys.pkl \
    --test_key test_keys.pkl \
    --save_data_dir data/DHFR \
    --save_model_dir dumps/DHFR \
    --hid_dim 64 --node_pred True --edge_pred False \
    --match_weights node \
    --enc_net Multihot --enc_base 2 \
    --emb_net Equivariant --share_emb_net True \
    --rep_net DMPNN \
    --rep_num_pattern_layers 3 --rep_num_graph_layers 3 \
    --rep_residual True --rep_dropout 0.0 --share_rep_net True \
    --pred_net SumPredictNet --pred_hid_dim 64 --pred_dropout 0.0 \
    --max_ngv 100 --max_nge 1000 --max_ngvl 8 --max_ngel 2 \
    --train_grad_steps 1 --train_batch_size 256 \
    --train_log_steps 1000 --eval_batch_size 256 \
    --lr 1e-3 --train_epochs 30 \
    --seed 0 --gpu_id 0

python train.py \
    --graph_dir ../../xNeuSM/data_processed/MSRC-21 \
    --train_key train_keys.pkl \
    --test_key test_keys.pkl \
    --save_data_dir data/MSRC-21 \
    --save_model_dir dumps/MSRC-21 \
    --hid_dim 64 --node_pred True --edge_pred False \
    --match_weights node \
    --enc_net Multihot --enc_base 2 \
    --emb_net Equivariant --share_emb_net True \
    --rep_net DMPNN \
    --rep_num_pattern_layers 3 --rep_num_graph_layers 3 \
    --rep_residual True --rep_dropout 0.0 --share_rep_net True \
    --pred_net SumPredictNet --pred_hid_dim 64 --pred_dropout 0.0 \
    --max_ngv 150 --max_nge 1000 --max_ngvl 8 --max_ngel 2 \
    --train_grad_steps 1 --train_batch_size 256 \
    --train_log_steps 1000 --eval_batch_size 256 \
    --lr 1e-3 --train_epochs 30 \
    --seed 0 --gpu_id 0