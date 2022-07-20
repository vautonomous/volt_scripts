#!/usr/bin/env bash

dir_main="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

array_path_scripts=()
array_path_scripts+=("${dir_main}/run_obstacle_avoidance_planner.sh")
array_path_scripts+=("${dir_main}/run_obstacle_stop_planner.sh")
array_path_scripts+=("${dir_main}/run_surround_obstacle_checker.sh")


function run_in_tab() {
cmd1="bash -c $1"
mate-terminal --tab --command="bash -ic 'echo $cmd1 >> $HOME/.bash_history; trap bash SIGINT; $cmd1 ; bash'"
}

for path_script in "${array_path_scripts[@]}"; do
    run_in_tab "${path_script}"
done 
