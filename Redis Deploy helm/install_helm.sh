# Error: Kubernetes cluster unreachable: Get "https://192.168.49.2:8443/version": dial tcp 192.168.49.2:8443: connect: no route to host
# To bypas this we need to restart minikube

minikube start --force

# Download the Helm installation script
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3

# Make the script executable
chmod +x get_helm.sh

# Run the script to install Helm
./get_helm.sh

# Verify the Helm Installation
helm version

# Initialize Helm
helm init

# Adding a repository (we can use this if we are planning to use Helm charts from a specific repo like Bitnami)
helm repo add bitnami https://charts.bitnami.com/bitnami

# Update Helm repo
helm repo update

# Remaining config will be managed automatically since we are using minikube
# KUBECONFIG will be managed automatically by minikube


