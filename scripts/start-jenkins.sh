#!/bin/bash
# Get and run jenkins docker image
#docker build -t demo-jenkins ../jenkins
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --name demo-jenkins jmmerino/jenkins:v1