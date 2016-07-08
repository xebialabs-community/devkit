#!/usr/bin/env bash

# Run XLDeploy in Docker. Mount some volumes to local directories so we can easily change files as needed.
# Usage: ./run.sh

docker run -it --rm \
   --name xldeploy \
   -p 4516:4516 \
   -v src:/lib/xl-deploy-5.5.1-server/ext \
   xldeploy 
