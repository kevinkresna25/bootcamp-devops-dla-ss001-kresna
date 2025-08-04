#!/bin/bash
set -e

echo "🛑 Stopping containers..."
docker rm -f frontend backend 2>/dev/null || echo "Containers already removed."

echo "🧹 Removing Docker network..."
docker network rm kresna-net 2>/dev/null || echo "Network already removed."

echo "🧽 Removing Docker images..."
docker rmi bootcamp-devops-kresna-frontend:v2 bootcamp-devops-kresna-backend:v2 2>/dev/null || echo "Images already removed."

echo "✅ All stopped and cleaned up."
