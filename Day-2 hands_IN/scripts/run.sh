#!/bin/bash
set -e

CONTAINER_NAME="basic-web-server"
IMAGE_NAME="basic-web-ssh-server-image"

# Check if container exists first
if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
  echo "The container '${CONTAINER_NAME}' already exists."

  # Check if it is already running
  if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "The container is already running."
  else
    echo "Starting the container..."
    docker start ${CONTAINER_NAME}
  fi
else
  echo "The container doesn't exist. Building..."

  # Check if image exists
  if ! docker images --format '{{.Repository}}' | grep -q "^${IMAGE_NAME}$"; then
    echo "Docker image not found. Building image..."
    docker build -t ${IMAGE_NAME} .
  fi

  # Creation and launch container
  docker run --privileged -d --name ${CONTAINER_NAME} -p 2223:22 ${IMAGE_NAME}

  echo "SSH access available on port 2223."
fi
