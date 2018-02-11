#!/bin/bash
# Build and run our app docker image
docker build -t nodeapp ../
docker run -d -p 8001:8001 --name demo-jenkins-app nodeap