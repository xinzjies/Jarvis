#!/bin/bash

BOT_CONTAINER_NUM=$(docker ps -f name=wechat-chatgpt | grep -w wechat-chatgpt | wc -l)
echo $BOT_CONTAINER_NUM

# CDK command post-process.
if [ "$BOT_CONTAINER_NUM" != "1" ]; then
  echo "error"
fi
