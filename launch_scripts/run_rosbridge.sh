#!/bin/bash

source /opt/ros/humble/setup.bash
source ${HOME}/projects/autoware/install/setup.bash

DIR_MAIN="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
DIR_LAUNCHER="$(dirname "$DIR_MAIN")/launcher"

ros2 launch "${DIR_LAUNCHER}/"rosbridge_launch.xml
