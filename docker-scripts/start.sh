#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 891377328182.dkr.ecr.us-east-1.amazonaws.com/ecr-devops-frontend

docker pull 891377328182.dkr.ecr.us-east-1.amazonaws.com/ecr-devops-frontend:latest

docker run --env-file /opt/devops/frontend/.env -dit -p 4000:4000 --restart on-failure:5 --name frontend 891377328182.dkr.ecr.us-east-1.amazonaws.com/ecr-devops-frontend:latest
