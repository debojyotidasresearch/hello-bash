#!/bin/bash

if [ $# == 0 ]; then
    echo -e "Usage: "$0" <name>";
    echo -e "Hello, bash!";
else
    IFS=$'\n';
    
    start_time=$(date +%s);
    
    argc=1;
    
    for argv in $@;
    do
        echo "Hello, "$argv"!";
    done;
    
    unset IFS;
    stop_time=$(date +%s);
    echo "execution time:"$((stop_time - start_time));
fi;
