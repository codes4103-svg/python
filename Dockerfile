# 使用官方 Python 基礎映像
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 複製程式碼
COPY app.py .

# 安裝 Flask
RUN pip install flask

# 開放 port 80
EXPOSE 80

# 啟動 Flask 應用
CMD ["python", "app.py"]
