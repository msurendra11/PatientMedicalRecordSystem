#!/usr/bin/env bash
cd /home/ec2-user/server
aws s3 cp s3://mrs-codedeploy/patient-registration/target/patient-registration-0.0.1.jar /home/ec2-user/server --sse aws:kms --sse-kms-key-id arn:aws:kms:us-east-2:639384053590:alias/aws/s3
sudo java -jar patient-registration-0.0.1.jar
