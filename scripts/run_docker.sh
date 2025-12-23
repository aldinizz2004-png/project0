#!/bin/bash
set -e

echo "🛑 Stopping old containers..."
docker-compose down || true

echo "🔨 Rebuilding images from scratch..."
docker-compose build --no-cache

echo "🚀 Starting containers..."
docker-compose up -d

echo "✅ Deployment finished"
