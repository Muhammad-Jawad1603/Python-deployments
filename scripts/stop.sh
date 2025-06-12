#!/bin/bash
echo "Stopping container..." >> /home/ubuntu/stop.log
docker stop python-app >> /home/ubuntu/stop.log 2>&1 || true
docker rm python-app >> /home/ubuntu/stop.log 2>&1 || true
echo "Stopped container." >> /home/ubuntu/stop.log
