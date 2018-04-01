#!/bin/bash
set -ex

if [[ "$(docker images -q xbox1993/chicken-html 2> /dev/null)" != "" ]]; then
    docker rmi xbox1993/chicken-html
fi
docker build . -t xbox1993/chicken-html