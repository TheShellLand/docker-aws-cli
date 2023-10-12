#!/bin/bash

# entrypoint

set -x

env

find /root/.aws -type f
find /root/.aws -type f | xargs cat

aws $@
