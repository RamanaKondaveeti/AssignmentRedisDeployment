# To deploy Redis server using a Helm chart on your Kubernetes cluster, you'll need Helm installed on your local machine and configured to work with your Kubernetes cluster. Here's a script to deploy Redis server using a Helm chart:

#!/bin/bash

# Define variables
NAMESPACE="redis"
RELEASE_NAME="my-redis"

# Create a namespace for Redis if it doesn't exist
kubectl create namespace $NAMESPACE 2>/dev/null

# Add the Bitnami Helm repository
helm repo add bitnami https://charts.bitnami.com/bitnami

# Update Helm repositories
helm repo update

# Deploy Redis using Helm chart
helm install $RELEASE_NAME bitnami/redis \
