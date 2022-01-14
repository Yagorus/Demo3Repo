#!/bin/bash
echo "REPOSITORY_REGION = ${REPOSITORY_REGION}"
echo "REPOSITORY_URL:TAG = ${REPOSITORY_URL}:${TAG}"

aws ecr get-login-password --region ${REPOSITORY_REGION} | docker login --username AWS --password-stdin ${REGISTRY_ID.dkr.$REPOSITORY_REGION.amazonaws.com}
docker build ${REPOSITORY_URL}:${TAG} -f ./Dockerfile .
docker push ${REPOSITORY_URL}:${TAG}