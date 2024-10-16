

# Install Docker if it's not already installed
if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: Docker is not installed.' >&2
  exit 1
fi

# Stop the running container (if any)
containerid=$(docker ps | awk '{print $1}')
docker rm -f $containerid


