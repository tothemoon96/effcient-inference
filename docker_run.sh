model=BELLE-2/BELLE-Llama2-13B-chat-0.4M
volume=$PWD/pretrained_model # share a volume with the Docker container to avoid downloading weights every run

docker run --gpus all --shm-size 1g -p 8080:80 -v $volume:/data ghcr.io/huggingface/text-generation-inference:1.0.1 --model-id $model