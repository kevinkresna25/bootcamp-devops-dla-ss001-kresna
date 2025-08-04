# === Stage 1: Build dependencies ===
FROM python:3.11-alpine AS builder

RUN apk add --no-cache build-base python3-dev

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# === Stage 2: Final image ===
FROM python:3.11-alpine

WORKDIR /app

COPY app.py .
COPY --from=builder /install /usr/local

EXPOSE 5000

CMD ["python", "app.py"]
