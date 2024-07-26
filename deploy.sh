#!/bin/bash

# Pull the latest image
docker pull ankush152002/monitoring-app:latest

# Stop any running container using port 5000
docker ps --filter "ancestor=ankush152002/monitoring-app" --filter "status=running" --format "{{.ID}}" | xargs -I {} docker stop {}

# Remove any stopped containers
docker ps -a --filter "ancestor=ankush152002/monitoring-app" --filter "status=exited" --format "{{.ID}}" | xargs -I {} docker rm {}

# Run the new container
docker run -d -p 5000:5000 ankush152002/monitoring-app:latest
