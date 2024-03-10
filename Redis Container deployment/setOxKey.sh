# Define the key and value
namespace="default"
OxKey=$1

# Get the name of the Redis pod in the Minikube cluster
REDIS_POD=$(minikube kubectl -- get pods -n $namespace -l app=redis -o jsonpath='{.items[0].metadata.name}')

# Execute the Redis CLI command to set the key-value pair
# minikube kubectl -- exec -it $REDIS_POD -n $namespace -- redis-cli SET $OxKey $OxValue
minikube kubectl -- exec -it $REDIS_POD -n $namespace -- sh -c 'export OxKey="$OxKey" && echo "OxKey value set"'

# Getting Values of OxKey and OxValue
echo "OxKey is set with value $OxKey in Redis server running in Minikube cluster."

# Below commands will fetch the Oxkey and display back

minikube kubectl -- exec -it $REDIS_POD -n $namespace -- sh -c "echo 'The Value set as OxKey is $OxKey'"