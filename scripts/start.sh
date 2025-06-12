#!/bin/bash
cd /home/ubuntu/python-app

# Stop any old container with same name
sudo docker stop python-app || true
sudo docker rm python-app || true

# Pull and run the latest image
sudo docker pull 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest

sudo docker run -d \
  --name python-app \
  -p 80:5000 \
  099199746132.dkr.ecr.<region>.amazonaws.com/demo-repo:latest
