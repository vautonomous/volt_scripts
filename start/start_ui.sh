#!/bin/bash

dir_main="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

rosbridge_path=("${dir_main}/rosbridge.sh")
fox_glove_path=("${dir_main}/fox_glove.sh")

$rosbridge_path &

sleep 3

$fox_glove_path
