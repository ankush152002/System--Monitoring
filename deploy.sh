#!/bin/bash

# Pull the latest image
docker pull ankush152002/monitoring-app:latest

# Stop and remove any running container using port 5000
docker ps --filter "publish=5000" --format "{{.ID}}" | xargs -r docker stop | xargs -r docker rm

# Run the new container
docker run -d -p 5000:5000 ankush152002/monitoring-app:latest

