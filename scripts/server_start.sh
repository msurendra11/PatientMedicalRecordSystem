#!/usr/bin/env bash
cd /home/ec2-user/server
aws s3 cp s3://iqe-poc-bucket/patient-registration/target/patient-registration-0.0.1.jar /home/ec2-user/server
sudo java -jar -Dserver.port=80 \
    patient-registration-0.0.1.jar > /dev/null 2> /dev/null < /dev/null &
