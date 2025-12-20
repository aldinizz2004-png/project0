#!/bin/bash
set -e

cd /var/www/html/restaurant-app

echo "🐳 Stopping old containers (if any)..."
docker-compose down || true

echo "🔨 Building images..."
docker-compose build

echo "🚀 Starting containers..."
docker-compose up -d

echo "✅ Docker mode ON:"
echo "http://$(hostname -I | awk '{print $1}'):8081/frontend/index.html"
