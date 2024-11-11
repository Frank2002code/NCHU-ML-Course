#!/bin/bash

# 檢查是否有提供 commit 訊息
if [ -z "$1" ]; then
    echo "請提供 commit 訊息"
    exit 1
fi

# Step 1: 拉取最新更改
echo "正在拉取最新更改..."
git pull origin main

# Step 2: 添加所有更改的文件
echo "添加更改的文件..."
git add .

# Step 3: 提交更改，使用參數作為 commit 訊息
echo "提交更改..."
git commit -m "$1"

# Step 4: 推送更改到遠端倉庫
echo "推送更改到遠端倉庫..."
git push origin main

echo "操作完成！"
