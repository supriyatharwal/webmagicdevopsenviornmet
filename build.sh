#!/bin/bash
docker network create --driver bridge devopsnetwork
docker build . -t jenkins -f jenkins/Dockerfile
docker run -itd -p 8080:8080 --rm --name jenkins -v jenkins_volume:/var/jenkins_home --net devopsnetwork jenkins
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword