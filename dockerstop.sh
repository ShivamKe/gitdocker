#!/bin/bash

stat=`docker ps -a | grep httpd | awk '{ print $NF }'`


if [ ! -z $stat ]; then
	echo "Container httpd-test already running, Stopping it..." && /bin/docker stop $stat && echo "Container $stat stopped.." 
	sleep 2 
else
	echo "Docker httpd is not running, Starting..."
fi
