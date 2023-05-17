#!/bin/bash

OPENAI_API_KEY=''
GPT_MODEL='gpt-3.5-turbo'
CHAT_TRIGGER_KEYWORD=''

# Get script location.
SHELL_PATH=$(cd "$(dirname "$0")";pwd)
$SHELL_PATH/stop-bot.sh

docker run -d --name wechat-chatgpt \
	-e OPENAI_API_KEY=$OPENAI_API_KEY \
	-e MODEL=$GPT_MODEL \
       	-e CHAT_PRIVATE_TRIGGER_KEYWORD=$CHAT_TRIGGER_KEYWORD \
	-v $(pwd)/data:/app/data/wechat-assistant.memory-card.json \
	holegots/wechat-chatgpt:latest

# View the QR code to log in to wechat
docker logs -f wechat-chatgpt
