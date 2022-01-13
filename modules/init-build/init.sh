#!/bin/bash
aws ecr get-login-password --region $REPOSITORY_REGION | docker login --username AWS --password-stdin $REGISTRY_ID.dkr.$REPOSITORY_REGION.amazonaws.com
docker build $REPOSITORY_URL:$TAG
docker push $REPOSITORY_URL:$TAG