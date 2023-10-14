#!/bin/bash

# entrypoint

set -xe

env

find /root/.aws -type f
#find /root/.aws -type f | xargs cat

#aws ecs describe-tasks \
#    --cluster $cluster \
#    --tasks $task | grep enableExecuteCommand

#aws ecs update-service \
#  --cluster $cluster \
#  --service $service \
#  --task-definition $task_definition \
#  --force-new-deployment \
#  --enable-execute-command

#aws ecs execute-command \
#    --cluster $cluster \
#    --task $task \
#    --container $container \
#    --interactive \
#    --command "/bin/bash"

aws $@
