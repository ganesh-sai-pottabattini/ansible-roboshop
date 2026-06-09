#!/bin/bash

read -p "Access Key: " ACCESS_KEY
read -s -p "Secret Key: " SECRET_KEY
echo

aws configure set aws_access_key_id "$ACCESS_KEY"
aws configure set aws_secret_access_key "$SECRET_KEY"
aws configure set region us-east-1

aws configure set output json

cat ~/.aws/config
cat ~/.aws/credentials

pip3.9 install boto3 botocore netaddr

sudo dnf install ansible -y

ansible-galaxy collection install amazon.aws

ansible --version

#read -p "Access Key: " ACCESS_KEY
# read -s -p "Secret Key: " SECRET_KEY
# echo

# aws configure set aws_access_key_id "$ACCESS_KEY"
# aws configure set aws_secret_access_key "$SECRET_KEY"
# aws configure set region us-east-1