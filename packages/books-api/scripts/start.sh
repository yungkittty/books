#!/bin/bash

handle_exit () {
  docker compose down;
}

trap handle_exit EXIT;

docker compose up --force-recreate --quiet-pull;

node ./src/index.js;
