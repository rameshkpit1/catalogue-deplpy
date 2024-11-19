#!/bin/bash
APP_VERSION=$1
ENVIRONMENT=$2
echo "app version: $APP_VERSION"
sudo yum install epel-release -y
sudo yum install https://repo.ius.io/ius-release-el7.rpm -y
sudo yum install python39 -y
sudo yum install python39-devel -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3.9 get-pip.py
sudo python3.9 -m pip install ansible botocore boto3
cd /tmp
ansible-pull -U https://github.com/rameshkpit1/ansible-roboshop-roles-tf.git -e component=catalogue -e app_version=$APP_VERSION -e env=$ENVIRONMENT main.yaml
