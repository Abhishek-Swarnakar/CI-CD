#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)  # Use -q to get only the container IDs
if [ -n "$containerid" ]; then
  echo "Stopping containers: $containerid"
  docker stop $containerid
  
  # Check if containers stopped successfully
  if [ $? -eq 0 ]; then
    echo "Removing containers: $containerid"
    docker rm $containerid
  else
    echo "Failed to stop one or more containers."
  fi
else
  echo "No running containers to stop."
fi
