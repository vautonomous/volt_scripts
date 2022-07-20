#!/usr/bin/env bash

source ~/projects/autoware/install/setup.bash &&
ros2 run obstacle_avoidance_planner obstacle_avoidance_planner_node \
--ros-args \
-r __ns:=/planning/scenario_planning/lane_driving/motion_planning \
-r __node:=obstacle_avoidance_planner \
-r obstacle_avoidance_planner/input/objects:=/perception/object_recognition/objects \
-r obstacle_avoidance_planner/input/path:=/planning/scenario_planning/lane_driving/behavior_planning/path \
-r obstacle_avoidance_planner/output/path:=obstacle_avoidance_planner/trajectory \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/launch/tier4_planning_launch/config/scenario_planning/lane_driving/motion_planning/obstacle_avoidance_planner/obstacle_avoidance_planner.param.yaml \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/vehicle/vehicle_info_util/config/vehicle_info.param.yaml \
-p is_showing_debug_info:=False \
-p is_stopping_if_outside_drivable_area:=True
