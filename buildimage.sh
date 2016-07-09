#!/usr/bin/env bash

# Build image to run XLDeploy server
#
# Usage: ./buildimage.sh

(cd xld && docker build -t xldeploy . )

