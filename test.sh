#!/bin/bash

node server.js &
sleep 3 # give server time to boot

stop_server() {
  pgrep node | xargs kill
}
curl http://localhost:8000/api
code="$?"

if [[ ! $code -eq 0 ]]; then
  stop_server
  echo "FAIL CODE $code";
  exit $code;
fi

stop_server
