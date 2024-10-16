#!/bin/bash

# Install Docker if it's not already installed
if ! [ -x "`command -v docker`" ]; then
  echo 'Error: Docker is not installed.' >&2
  exit 1
fi

# Stop the running container (if any)
container_id=`docker ps -q`
if [ -n "$container_id" ]; then
  docker rm -f $container_id
fi