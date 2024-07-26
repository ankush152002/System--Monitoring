#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull ankush152002/monitoring-app

# Run the Docker image as a container
docker run -d -p 5000:5000 ankush152002/monitoring-app
