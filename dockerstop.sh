#!/bin/bash
docker ps -a | grep httpd-test

if [ "$?" -eq 0 ]
 then
   echo "Container httpd-test already running, Stopping it..."
   /bin/docker stop httpd-test && echo "Container httpd-test stopped.." && sleep 2
fi

