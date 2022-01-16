#!/bin/bash
echo "\n REPOSITORY_REGION = ${REPOSITORY_REGION}"
echo "\n REPOSITORY_URL:TAG = ${REPOSITORY_URL}:${TAG}"

aws ecr get-login-password --region $REPOSITORY_REGION | docker login --username AWS --password-stdin $REGISTRY_ID.dkr.$REPOSITORY_REGION.amazonaws.com
docker build $REPOSITORY_URL:$TAG .
docker push $REPOSITORY_URL:$TAG

#aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 367668710117.dkr.ecr.eu-central-1.amazonaws.com

#docker build -t ecr .
#docker tag ecr:latest 367668710117.dkr.ecr.eu-central-1.amazonaws.com/ecr:latest
#docker push 367668710117.dkr.ecr.eu-central-1.amazonaws.com/ecr:latest