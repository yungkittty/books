#!/bin/bash

handle_exit () {
  docker compose down;
}

trap handle_exit EXIT;

docker compose up \
  --force-recreate \
  --renew-anon-volumes \
  --quiet-pull;

node ./src/index.js;
