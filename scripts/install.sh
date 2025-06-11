#!/bin/bash
cd /home/ubuntu/python-app

# Create virtual environment if not exists
python3 -m venv venv

# Activate and install
source venv/bin/activate
pip install -r requirements.txt
