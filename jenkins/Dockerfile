FROM jenkins/jenkins:latest
USER root
COPY jenkins/resources/plugins.txt /var/jenkins_home
RUN apt-get update -y
RUN apt-get install awscli -y
RUN xargs /usr/local/bin/install-plugins.sh < /var/jenkins_home/plugins.txt