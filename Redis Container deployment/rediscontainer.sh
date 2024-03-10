#!/bin/bash

# Home Repository
cd /root/

# Clone git repo where our code for redis container deployment is saved
git clone -b master https://github.com/RamanaKondaveeti/redis-helmchart.git

# Change permissions of .minikube folder as we are using root previleges, Created a User with minikube here 
chown -R minikube:docker ~/.minikube

# Few Permissions to fix lock issues and permission issues
chmod 775 -R /tmp/

# Restart Minikube just in case
minikube delete
minikube start --force

# Goto project folder and install redis
cd /root/redis-helmchart/redis-chart
helm package .
helm install redis-server ./redis-chart-0.1.0.tgz

# Check the newly deployed pod
minikube kubectl get pods
