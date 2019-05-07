#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo bash "$0"
   exit $?
fi
yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
