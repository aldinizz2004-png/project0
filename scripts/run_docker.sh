#!/bin/bash
set -e
cd /var/www/html/restaurant-app

sudo systemctl stop apache2 || true
sudo systemctl stop mysql || true

docker-compose down || true
docker-compose up --build -d

echo "Docker mode ON: http://$(hostname -I | awk '{print $1}'):8081/frontend/index.html"
