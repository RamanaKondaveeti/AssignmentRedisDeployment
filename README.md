                                                Assignment
                                                ==========
                                                
The assignment is to create and then send to Ox Security IAC (Infrastructure as Code) of the
following:
1. A script to deploy a minikube cluster ( ie: minikube start )
2. A script to deploy redis server helm chart on the cluster ( ie: Redis )
3. A helm chart defining a deployment with a single container, that container should have
the ability to connect to the redis server ( ie: redis - Official Image | Docker Hub ). The
deployment should remain up, allowing the user to “exec” into the container to run redis
commands.
4. A script to deploy the above helm chart on the cluster
5. A script to “exec” to the deployment and set a new key in the redis server (OxKey) with a
value (OxValue)
6. A script to “exec” to the deployment and get the value of the key (OxKey) and print it
back out.

Code URL: https://github.com/RamanaKondaveeti/AssignmentRedisDeployment.git
Branch : master

Folder Staructure of this project
=================================
1. Install Minikube   (scripts- docker_install.sh and minikube_deploy.sh)
2. Redis Deploy helm   (scripts- install_helm.sh amd helmredisdeploy.sh)
3. Redis Container deployment  (scripts- rediscontainer.sh and setOxKey.sh)

1. Install Minikube Folder
   =======================
 There are prerequisite like installing docker before using Minikube
 --docker_install.sh script provided will Install Docker in our Machine (I took a Ubuntu machine with t2.meduim config and installed docker and minikube).
 --minikube_deploy.sh script will Install minikube and start it on our machine and will enable dashboard and ingress addons.
 --I executed this scripts on root folder.
 --Now our minikube is setup ready.

2. Redis Deploy helm
   ==================
   --Once Minikube is installed we need to install helm and deploy a redis server
   --install_helm.sh will get the latest helm and install it on our machine and optionally I also added a repo (in my case it is Bitnami)
   --Minikube will automatically install kubectl which is used to interact with Kubernetes cluster.
   --To deploy Redis server using a Helm chart on our Kubernetes cluster, we need Helm installed on our machine and configured to work with your Kubernetes cluster  
   --helmredisdeploy.sh will deploy redis from bitnami repo.
   --After the script is executed we can use "helm ls" to check the newly created pod.

3. Redis Container deployment
   ===========================
   --rediscontainer.sh script will clone the repo in which I saved the helm deployments.
   i.e : https://github.com/RamanaKondaveeti/redis-helmchart.git
   --I also included few permission which might effect the deployment if not taken care.
   --Once script is executed we can see the newly created pod using "minikube kubectl get pods"
   --The final step is to set and retrive the OxKey value and I implemented that in script setOxKey.sh
   --This script wil fetch the redis pod and will exec into that pod and will set a OxValue
   --I didn't hardcord the value and using a variable.
   --./setOxKey.sh "value of OxKey" 
   --Use above command to set OxKey Value and I used same script to display back the OxKey back. 
