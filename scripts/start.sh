#!/bin/bash
cd /home/ubuntu/python-app

# Pull and run the latest image
sudo docker pull 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest

sudo docker run -d \
  --name python \
  -p 80:5000 \
  099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest
