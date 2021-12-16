#!/bin/bash

if [ -z "$1" ]
then
      echo "please inform agent version"
      exit 1
fi

docker build --no-cache -t agent-repo:$1 -f Dockerfile .

