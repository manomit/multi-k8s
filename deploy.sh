docker build -t manomit/multi-client:latest -t manomit/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t manomit/multi-server:latest -t manomit/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t manomit/multi-worker:latest -t manomit/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push manomit/multi-client:latest
docker push manomit/multi-server:latest
docker push manomit/multi-worker:latest

docker push manomit/multi-client:$SHA
docker push manomit/multi-server:$SHA
docker push manomit/multi-worker:$SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=manomit/multi-server:$SHA
kubectl set image deployments/client-deployment client=manomit/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=manomit/multi-worker:$SHA