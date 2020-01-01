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


# install helm on google kubernetes cluster
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh

# run two commands to create service account and role based access control to use tiller inside google kubernetes cluster

kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

helm init --service-account tiller --upgrade

### install nginx-ingress

helm install stable/nginx-ingress --name my-nginx --set rbac.create=true

