#!/bin/bash

blzPid=`ps aux | grep "dataServer:app" | awk '{ print $2 }'`

if [ -n "$blzPid" ]; then
    echo sudo kill -9 $blzPid
    sudo kill -9 $blzPid &> /dev/null
fi

