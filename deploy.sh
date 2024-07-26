#!/bin/bash

# Navigate to the project directory
cd /home/ubuntu/system-monitoring

# Stop and remove existing container if it exists
docker stop monitoring-app-container || true
docker rm monitoring-app-container || true

# Build the Docker image
docker build -t ankush152002/monitoring-app .

# Run the Docker container
docker run -d \
  --name monitoring-app-container \
  -p 5000:5000 \
  ankush152002/monitoring-app
