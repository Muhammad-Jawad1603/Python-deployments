#!/bin/bash
cd /home/ubuntu/python-app

if [ -f flask.pid ]; then
    kill $(cat flask.pid) || true
    rm flask.pid
fi
sudo rm -rf /home/ubuntu/python-app/app.py