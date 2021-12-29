#!/usr/bin/env bash

ROOT_PATH=${1}

echo "curl with version"
curl --silent -o /dev/null -w "%{http_code}\n" http://localhost:8080"$ROOT_PATH"/webjars/jquery-ui/1.13.0/jquery-ui.min.js

echo "curl without version"
curl --silent -o /dev/null -w "%{http_code}\n" http://localhost:8080"$ROOT_PATH"/webjars/jquery-ui/jquery-ui.min.js
