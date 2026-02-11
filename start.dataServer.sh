#!/bin/bash

#echo sudo gunicorn --daemon --config dataServer.conf.py dataServer:app
#sudo gunicorn --daemon --config dataServer.conf.py dataServer:app

echo sudo nohup gunicorn --daemon --config dataServer.conf.py dataServer:app
sudo nohup gunicorn --config dataServer.conf.py dataServer:app &> /dev/null &

blzPid=`ps aux | grep "dataServer:app" | awk '{ print $2 }'`
echo $blzPid

