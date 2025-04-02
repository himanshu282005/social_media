#!/bin/bash

docker build -t himanshu519/pro1:$BUILD_ID .
docker tag himanshu519/pro1:$BUILD_ID himanshu519/pro1:latest

docker push himanshu519/pro1:$BUILD_ID
docker push himanshu519/pro1:latest

docker rmi -f himanshu519/pro1:$BUILD_ID himanshu519/pro1:latest
