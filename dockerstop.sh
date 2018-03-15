#!/bin/bash
docker ps -a | grep httpd-test-master

if [ "$?" -eq 0 ]
 then
   echo "Container httpd-test already running, Stopping it..."
   /bin/docker stop httpd-test-master && echo "Container httpd-test-master stopped.." && sleep 2
fi

