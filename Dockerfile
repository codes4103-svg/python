# 使用官方 Python 基礎映像
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 複製 Flask 應用程式到容器
COPY ../app.py .

# 安裝 Flask
RUN pip install flask

# 啟動 Flask 應用程式
CMD ["python", "app.py"]
