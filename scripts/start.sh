#!/bin/bash

# Login to ECR
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com

# Pull the latest image
sudo docker pull 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest

# Run the container
sudo docker run -d --name python-app -p 80:80 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest
