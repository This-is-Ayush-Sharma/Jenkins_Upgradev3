#!/bin/bash
docker image build -t ayushsharma1299/jenkins-demo1:$1 -f jenkins-plugin-model/src/demo2-publish/dockerfile .

if [ -z ${DOCKER_HUB_USER+x} ]
then 
    echo 'Skipping login - credentials not set' 
else 
    docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD
fi

docker push ayushsharma1299/jenkins-demo1:$1
