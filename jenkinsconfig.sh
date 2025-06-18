#!/bin/bash

set -e

echo "installing jenkins repo"

sudo curl -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo "Importing jenkins key file"

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "configuring jenkins service"

sudo yum install -y fontconfig java-21-openjdk
sudo yum install -y jenkins

sudo systemctl daemon-reload

sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
