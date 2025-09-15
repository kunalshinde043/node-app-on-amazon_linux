#!/bin/bash
# deploy_node.sh
# Script to deploy Node.js application on Amazon Linux EC2

echo "=== Updating System ==="
sudo yum update -y

echo "=== Installing Node.js ==="
sudo yum install nodejs -y
node --version
npm --version

echo "=== Installing Git ==="
sudo yum install git -y
git --version

echo "=== Cloning Node.js Application ==="
# Replace <git-url> with your actual repository URL
sudo git clone <git-url>
cd node-app || { echo "Directory node-app not found"; exit 1; }

echo "=== Installing Dependencies ==="
sudo npm install

echo "=== Running Node.js App in Foreground ==="
# This will block your terminal; use PM2 below to keep it running after exit
sudo npm start app.js
