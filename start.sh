#!/bin/sh
# 安裝 JSON Server 和 cors
npm install -g json-server cors
# 使用 cors 啟動 JSON Server
json-server --watch db.json --middlewares node_modules/cors/lib/index.js

chmod +x start.sh