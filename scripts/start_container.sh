#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull abhishekswarnakar/image2:latest
# Run the Docker image as a container
docker run -d -p 6000:6000  abhishekswarnakar/image2:latest
