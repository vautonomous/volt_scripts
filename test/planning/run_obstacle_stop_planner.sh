#!/usr/bin/env bash

source ~/projects/autoware/install/setup.bash &&
ros2 run obstacle_stop_planner obstacle_stop_planner_node \
--ros-args \
-r __ns:=/planning/scenario_planning/lane_driving/motion_planning \
-r __node:=obstacle_stop_planner \
-r obstacle_stop_planner/output/stop_reason:=/planning/scenario_planning/status/stop_reason \
-r obstacle_stop_planner/output/stop_reasons:=/planning/scenario_planning/status/stop_reasons \
-r obstacle_stop_planner/output/max_velocity:=/planning/scenario_planning/max_velocity_candidates \
-r obstacle_stop_planner/output/velocity_limit_clear_command:=/planning/scenario_planning/clear_velocity_limit \
-r obstacle_stop_planner/output/trajectory:=/planning/scenario_planning/lane_driving/trajectory \
-r obstacle_stop_planner/input/pointcloud:=/perception/obstacle_segmentation/pointcloud \
-r obstacle_stop_planner/input/objects:=/perception/object_recognition/objects \
-r obstacle_stop_planner/input/odometry:=/localization/kinematic_state \
-r obstacle_stop_planner/input/trajectory:=obstacle_avoidance_planner/trajectory \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/launch/tier4_planning_launch/config/scenario_planning/common/common.param.yaml \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/launch/tier4_planning_launch/config/scenario_planning/lane_driving/motion_planning/obstacle_stop_planner/obstacle_stop_planner.param.yaml \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/launch/tier4_planning_launch/config/scenario_planning/lane_driving/motion_planning/obstacle_stop_planner/adaptive_cruise_control.param.yaml \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/vehicle/vehicle_info_util/config/vehicle_info.param.yaml \
-p enable_slow_down:=False
