docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID himanshu519/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID himanshu519/$JOB_NAME:latest

docker push himanshu519/$JOB_NAME:$BUILD_ID

docker push himanshu519/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID himanshu519/$JOB_NAME:$BUILD_ID himanshu519/$JOB_NAME:latest
