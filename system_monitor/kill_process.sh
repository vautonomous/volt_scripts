#!/usr/bin/bash

PID=`ps -eaf | grep volt_sm | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  kill -9 $PID
fi

PID=`ps -eaf | grep msr_reader | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  kill -9 $PID
fi

PID=`ps -eaf | grep hdd_reader | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  kill -9 $PID
fi

PID=`ps -eaf | grep traffic_reader | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  kill -9 $PID
fi

