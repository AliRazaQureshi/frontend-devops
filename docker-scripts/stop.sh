#!bin/bash

if [ $( docker ps -a | grep frontend | wc -l ) -gt 0 ]; then
  docker stop frontend
  docker rm frontend
  docker rmi 891377328182.dkr.ecr.us-east-1.amazonaws.com/ecr-devops-frontend:latest
fi

exit 0
