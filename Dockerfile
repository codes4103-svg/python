# 使用官方 Python 映像(精簡版)
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 複製應用程式檔案
COPY app.py .

# 安裝 Flask
RUN pip install flask

# 開放 port 80 給外部流量
EXPOSE 80

# 啟動 Flask 應用
CMD ["python", "app.py"] 

