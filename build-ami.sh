#!/bin/bash

# exit if no app or server version supplied
[[ $# = 2 ]] || { echo "Usage: $0 APP_VERSION SERVER_VERSION"; exit 1; }

APP_VERSION=$1
SERVER_VERSION=$2

packer build \
    -var app_version=$APP_VERSION \
    -var server_version=$SERVER_VERSION \
    web.json
