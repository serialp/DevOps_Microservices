#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=serialp/ml-microservice-app

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run ml-microservice-app --image=$dockerpath --port 80
#kubectl create deployment ml-microservice-app --image=$dockerpath
kubectl run ml-microservice-app --generator=run-pod/v1 --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose deployment/ml-microservice-app --type=LoadBalancer --port 8080 --target-port 80
kubectl port-forward ml-microservice-app 8080:80
