#!/bin/bash

if [ $# == 0 ]; then
    echo -e "Usage: "$0" <name>";
    echo -e "Hello, bash!";
else
    IFS=$'\n';
    
    start_time=$(date +%s);
    
    argc=1;
    
    while [ $argc <= $# ];
    do
        echo -e "Hello, "$argc"!";
        argc=$((argc + 1));
    done;
    
    unset IFS;
    stop_time=$(date +%s);
fi;
