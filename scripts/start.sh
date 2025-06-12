#!/bin/bash

# Login to ECR
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com

# Pull the Docker image
docker pull 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest

# Run the container
docker run -d --name python-app -p 80:5000 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo:latest

