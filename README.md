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


