#!/bin/bash
# User data script for WebServer 2
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from WebServer 2 - us-east-1b</h1>" > /var/www/html/index.html
