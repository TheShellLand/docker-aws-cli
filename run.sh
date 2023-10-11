#!/bin/bash

# run veilid

cd $(dirname $0); set -xe

docker rm -f aws-cli || true
docker run -d --name aws-cli $@ aws-cli:latest
