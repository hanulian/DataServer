#!/bin/bash

#echo sudo nohup python3 lorawan_flask_server.py
#sudo nohup python3 lorawan_flask_server.py &> /dev/null &

echo sudo gunicorn --daemon --config lorawan_flask_server.conf.py lorawan_flask_server:app
sudo gunicorn --daemon --config lorawan_flask_server.conf.py lorawan_flask_server:app

blzPid=`ps aux | grep "lorawan_flask_server:app" | awk '{ print $2 }'`
echo $blzPid

