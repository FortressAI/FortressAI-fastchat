#!/bin/bash
python3 -m fastchat.serve.controller &
#python -m fastchat.serve.model_worker --model-path lmsys/vicuna-7b-v1.3 --model-path lmsys/longchat-7b-v1.5-32k --model-path codellama/CodeLlama-7b-Instruct-hf &
python3 -m fastchat.serve.model_worker --model-path codellama/CodeLlama-7b-Instruct-hf --device cpu&
python3 -m fastchat.serve.openai_api_server --host localhost --port 7860


