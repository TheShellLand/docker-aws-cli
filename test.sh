#!/bin/bash

# test veilid

cd $(dirname $0); set -xe

bash build.sh

docker volume create aws-cli
docker run --rm -it -v aws-cli:/root/.aws/ --name aws-cli --entrypoint bash aws-cli:latest $@
