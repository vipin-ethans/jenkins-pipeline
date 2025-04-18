#!/bin/bash

EC2_IP=$1
PEM_PATH=$2

echo "Deploying app to EC2 at $EC2_IP"

scp -o StrictHostKeyChecking=no -i "$PEM_PATH" -r app/* ec2-user@$EC2_IP:/var/www/html/
