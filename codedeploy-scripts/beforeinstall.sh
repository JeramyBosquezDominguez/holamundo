#!/bin/bash
cd /opt/codedeploy-agent/deployment-root/${DEPLOYMENT_GROUP_ID}/${DEPLOYMENT_ID}/deployment-archive

sudo chmod +x gradlew

./gradlew war

cd ./build/libs

name=`ls`

mv $name hola.war
