#!/bin/bash
cd /home/ubuntu/python-app
source venv/bin/activate

# Start the Flask app in background
nohup python3 app.py > app.log 2>&1 &
echo $! > flask.pid
