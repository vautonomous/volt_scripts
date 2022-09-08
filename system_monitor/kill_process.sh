#!/usr/bin/env bash

PID=`ps -eaf | grep new_sm | grep -v grep | awk '{print $2}'`
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

