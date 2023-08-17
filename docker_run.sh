export HF_HOME=/data/hanweiguang/.cache/huggingface
export https_proxy=http://127.0.0.1:65530
export http_proxy=http://127.0.0.1:65530
export all_proxy=socks5://127.0.0.1:65530

model=BELLE-2/BELLE-Llama2-13B-chat-0.4M
volume=$HF_HOME/hub

# docker run --gpus all --shm-size 1g --network host \
#     --rm \
#     --env https_proxy=$https_proxy \
#     --env http_proxy=$http_proxy \
#     --env all_proxy=$all_proxy \
#     -v $volume:/data \
#     ghcr.io/huggingface/text-generation-inference:1.0.1 \
#     --model-id $model

docker run --gpus all --shm-size 1g --network host \
    -it --rm \
    --env https_proxy=$https_proxy \
    --env http_proxy=$http_proxy \
    --env all_proxy=$all_proxy \
    -v $volume:/data \
    text_gen