#!/bin/bash
cd /home/ubuntu/python-app

aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com

# Pull and run the latest image
sudo docker pull 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest

sudo docker run -d \
  --name python \
  -p 80:5000 \
  099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest
