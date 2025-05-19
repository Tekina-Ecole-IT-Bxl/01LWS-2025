#!/bin/bash

IMAGE_NAME="full-debian-stack"
CONTAINER_NAME="web-container"
SSH_PORT=2223
HTTP_PORT=8080
DB_PORT=3306
FTP_PORT=2121

if ! docker info > /dev/null 2>&1; then
  echo "Docker is not running. Please start Docker and try again."
  exit 1
fi

docker build -t $IMAGE_NAME .

if [ $? -ne 0 ]; then
  echo "Image build failed."
  exit 1
fi

if docker ps -a --format '{{.Names}}' | grep -Eq "^$CONTAINER_NAME\$"; then
  docker rm -f $CONTAINER_NAME
fi

docker run -d --name $CONTAINER_NAME \
  -p $SSH_PORT:22 \
  -p $HTTP_PORT:80 \
  -p $DB_PORT:3306 \
  -p $FTP_PORT:21 \
  -p 30000-30100:30000-30100 \
  $IMAGE_NAME

if [ $? -eq 0 ]; then
  echo ""
  echo "✅ CONTAINER IS UP"
  echo "➡️  SSH:       ssh root@localhost -p $SSH_PORT (password: root)"
  echo "➡️  Web:       http://localhost:$HTTP_PORT/"
  echo "➡️  phpMyAdmin: http://localhost:$HTTP_PORT/phpmyadmin"
  echo "     MySQL user: webuser"
  echo "     MySQL pass: webpass"
  echo "➡️  FTP:       ftpuser@localhost:$FTP_PORT"
  echo "     FTP pass:  ftppass"
  echo "     Passive Ports: 30000–30100"
else
  echo "❌ Failed to start container."
  exit 1
fi