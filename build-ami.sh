#!/bin/bash

# exit if no app version supplied
[[ $# = 1 ]] || { echo "Usage: $0 APP_VERSION"; exit 1; }

APP_VERSION=$1
SERVER_VERSION=$(git rev-list -1 HEAD -- ansible)

packer build \
    -var app_version=$APP_VERSION \
    -var server_version=$SERVER_VERSION \
    web.json
