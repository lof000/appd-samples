#!/bin/bash

if [ -z "$1" ]
then
      echo "please inform agent version"
      exit 1
fi

if [ -z "$2" ]
then
      echo "please inform repo"
      exit 1
fi

docker tag $2:$1 leandrovo/agent-repo:$1
docker push $2/agent-repo:$1
