### Create secret object in kubernetes
kubectl create secret generic/docker-registry/tls <secret_name> --from-literal key=value


### Ingres nginx setup locally
kubectl apply -f <path>
minikube addons enable ingress
kubectl apply -f k8s

### minikube dashboard


### Install travic ci cli
docker run -it -v $(pwd):/app ruby:2.3 sh
gem install travis --no-rdoc --no-ri
gem install travis
travis login
copy the service account json file
travis encrypt-file service-account.json -r manomit / multi-k8s