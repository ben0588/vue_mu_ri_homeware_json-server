# 使用 Node.js 官方映像作為基礎映像
FROM node:14

# 設定工作目錄
WORKDIR /app

# 複製專案檔案到工作目錄
COPY . .

# 安裝 json-server
RUN npm install -g json-server

# 開放 json-server 使用的端口（預設為 3000）
EXPOSE 3000

# 啟動 json-server
CMD ["json-server", "--watch", "db.json", "--port", "3000"]
