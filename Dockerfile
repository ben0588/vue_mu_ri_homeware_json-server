# 使用 Node.js 官方基礎映像
FROM node:latest

# 設定工作目錄
WORKDIR /usr/src/app

# 複製您的 db.json 和 start.sh 到容器中
COPY db.json ./
COPY start.sh ./

# 執行啟動腳本來安裝 JSON Server 和 cors，並啟動服務
CMD ["./start.sh"]


