#!/usr/bin/env bash

set -ex

docker compose build --no-cache
docker compose up -d

docker compose exec -it psitransfer bash
