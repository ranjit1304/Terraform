#!/bin/bash
# User data script for WebServer 1
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from WebServer 1 - us-east-1a</h1>" > /var/www/html/index.html
