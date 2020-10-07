#!/bin/bash
MY_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
MY_DIR="$(dirname $MY_PATH)"
cd $MY_DIR

docker run \
    -it \
    --rm \
    --name 'kubevious-backend' \
    -p 4001:4001 \
    --network kubevious \
    -e NODE_ENV=development \
    -e MYSQL_HOST=kubevious-mysql \
    -e MYSQL_PORT=3306 \
    -e MYSQL_DB=kubevious \
    -e MYSQL_USER=root \
    -e MYSQL_PASS= \
    kubevious-backend

    