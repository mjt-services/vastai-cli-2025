#!/usr/bin/env bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Source the .env file
if [ -f "${SCRIPT_DIR}/../.env" ]; then
  export $(grep -v '^#' "${SCRIPT_DIR}/../.env" | xargs)
fi

docker network create "${NETWORK_NAME}" || true

docker stop "${NAME}" || true

  
# docker run -it --rm \
docker run -it --rm -d \
  --name "${NAME}" \
  --network mq_network \
  -p 9000:9000 \
  --env-file "${SCRIPT_DIR}/../.env" \
  "${IMAGE_TAG}" \