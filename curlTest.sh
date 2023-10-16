curl -X POST -H "Content-Type: application/json" -d '{
  "api_key": "mzi-07cd8190694d53ed4229f990e4b5ee28",
  "model": "CodeLlama-7b-Instruct-hf",
  "messages": [
    {"role": "system", "content": "You are a helpful coding assistant."},
    {"role": "user", "content": "What is the latest version of Python?"}
  ]
}' https://codellama-7b-python-hf-dhluhevcw45amus2.modelz.io/v1/chat/completions


export MODELZ_API_KEY=mzi-07cd8190694d53ed4229f990e4b5ee28

export OPENAI_API_KEY=mzi-07cd8190694d53ed4229f990e4b5ee28
export DEPLOYMENT_KEY=codellama-7b-python-hf-dhluhevcw45amus2

modelz inference -d $DEPLOYMENT_KEY prompt="cute cat"
modelz inference -d $DEPLOYMENT_KEY prompt="What is the latest version of Python?"

curl https://python-flmn7efhe89i8lrt.modelz.io/v1/chat/completions -X POST \
-H "Content-Type: application/json" \
-H "Authorization: Bearer mzi-07cd8190694d53ed4229f990e4b5ee28" \
-d '{
"model": "codellama/CodeLlama-7b-Python-hf",
  "messages": [
    {"role": "system", "content": "You are a helpful coding assistant."},
    {"role": "user", "content": "What is the latest version of Python?"}
  ],
"temperature": 0.1,
"max_tokens": 100
}'