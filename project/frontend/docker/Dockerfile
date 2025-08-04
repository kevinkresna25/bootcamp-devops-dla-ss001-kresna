# === Stage 1: Build dependencies ===
FROM python:3.11-alpine AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# === Stage 2: Final image ===
FROM python:3.11-alpine

WORKDIR /app

COPY . .

COPY --from=builder /install /usr/local

EXPOSE 3000

CMD ["python", "app.py"]
