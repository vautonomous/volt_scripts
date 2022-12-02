#!/usr/bin/env bash

array_path_scripts=()
array_path_scripts+=("/home/volt/projects/volt_scripts/test/bag/planning/planning_inputs.sh")
array_path_scripts+=("/home/volt/projects/volt_scripts/test/bag/planning/planning_outputs.sh")

function run_in_tab() {
cmd1="bash -c $1"
mate-terminal --tab --command="bash -ic 'echo $cmd1 >> $HOME/.bash_history; trap bash SIGINT; $cmd1 ; bash'"
}

for path_script in "${array_path_scripts[@]}"; do
    run_in_tab "${path_script}"
    sleep 1
done 
