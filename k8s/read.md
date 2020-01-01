### Create secret object in kubernetes
kubectl create secret generic/docker-registry/tls <secret_name> --from-literal key=value


### Ingres nginx setup locally
kubectl apply -f <path>
minikube addons enable ingress
kubectl apply -f k8s

### minikube dashboard