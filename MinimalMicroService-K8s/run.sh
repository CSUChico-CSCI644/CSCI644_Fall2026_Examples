#!/bin/bash

minikube start
kubectl apply -f redis-all.yml
kubectl apply -f postgres-all.yml
minikube image build -t django-container:latest Backend/.
kubectl apply -f django-all.yml
# kubectl create configmap nginx-config --from-file=NGINX/default.conf 
kubectl apply -f nginx-all.yml
sleep 30
minikube service nginx-service --url