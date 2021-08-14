#!/bin/bash

handle_exit () {
  echo "handle_exit ${?}";
}

trap handle_exit EXIT;
