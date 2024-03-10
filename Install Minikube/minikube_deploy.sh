#!/bin/bash

# Install Minikube (if not already installed)
if ! command -v minikube &> /dev/null; then
    echo "Minikube is not installed. Installing..."
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    rm minikube-linux-amd64
fi

# Start Minikube cluster
echo "Starting Minikube cluster..."
# minikube start --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus=1
minikube start --force

# Enable Minikube addons (optional)
echo "Enabling Minikube addons..."
minikube addons enable dashboard
minikube addons enable ingress

# Display Minikube cluster status
echo "Minikube cluster status:"
minikube status