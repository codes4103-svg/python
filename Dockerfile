# 使用官方 Python 映像
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 複製檔案
COPY . /app

# 安裝依賴
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# 開放 Cloud Run 所需 port
ENV PORT=8080
EXPOSE 8080

# 使用 gunicorn 啟動 Flask
CMD exec gunicorn app:app --bind 0.0.0.0:$PORT
