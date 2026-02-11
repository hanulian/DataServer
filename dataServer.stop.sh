#!/bin/bash

#echo nohup python3 lorawan_flask_server.py
#nohup python3 lorawan_flask_server.py &> /dev/null &

blzPid=`ps aux | grep "lorawan_flask_server:app" | awk '{ print $2 }'`

if [ -n "$blzPid" ]; then
    echo sudo kill -9 $blzPid
    sudo kill -9 $blzPid &> /dev/null
fi

