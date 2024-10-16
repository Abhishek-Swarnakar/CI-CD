#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)  # Use -q to get only the container IDs
if [ -n "$containerid" ]; then
  docker stop $containerid
fi
