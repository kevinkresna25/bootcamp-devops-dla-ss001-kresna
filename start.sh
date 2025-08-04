#!/bin/bash
set -e

# === Clean up containers and network ===
docker rm -f frontend backend 2>/dev/null || true
docker network rm kresna-net 2>/dev/null || true

# === Create new network ===
docker network create kresna-net

# === Build backend image ===
echo "🚧 Building backend image..."
docker build --rm -t bootcamp-devops-kresna-backend:v2 \
  -f project/backend/docker/Dockerfile project/backend

# === Build frontend image ===
echo "🚧 Building frontend image..."
docker build --rm -t bootcamp-devops-kresna-frontend:v2 \
  -f project/frontend/docker/Dockerfile project/frontend

# === Run backend container ===
echo "🚀 Running backend container..."
docker run -d \
  --name backend \
  --network kresna-net \
  -e FLASK_DEBUG=false \
  bootcamp-devops-kresna-backend:v2

# === Run frontend container ===
echo "🚀 Running frontend container..."
docker run -d \
  --name frontend \
  --network kresna-net \
  -p 3000:3000 \
  -e BACKEND_URL=http://backend:5000/hello \
  bootcamp-devops-kresna-frontend:v2

echo "✅ Microservices Running Successfully"
