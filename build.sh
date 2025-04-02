#!/bin/bash
set -e  # Stop script if any command fails

# Convert JOB_NAME to lowercase to prevent Docker errors
LOWER_JOB_NAME=$(echo "$JOB_NAME" | tr '[:upper:]' '[:lower:]')

# Build Docker image
docker build -t $LOWER_JOB_NAME:$BUILD_ID .

# Tag Docker image
docker tag $LOWER_JOB_NAME:$BUILD_ID himanshu519/$LOWER_JOB_NAME:$BUILD_ID
docker tag $LOWER_JOB_NAME:$BUILD_ID himanshu519/$LOWER_JOB_NAME:latest

# Push Docker image to DockerHub
docker push himanshu519/$LOWER_JOB_NAME:$BUILD_ID
docker push himanshu519/$LOWER_JOB_NAME:latest

# Remove local images to free space
docker rmi -f $LOWER_JOB_NAME:$BUILD_ID \
              himanshu519/$LOWER_JOB_NAME:$BUILD_ID \
              himanshu519/$LOWER_JOB_NAME:latest
