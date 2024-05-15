#!/bin/bash

cd $(dirname $0) && set -xe

export $(cat env.sh | xargs) 2>/dev/null

exit $?
