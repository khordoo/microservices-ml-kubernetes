#!/usr/bin/env bash


# Step 1:
# This is your Docker ID/path
dockerpath=mkhordoo/house-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath house-prediction-app

# Step 3:
export POD_NAME=$(kubectl get pods --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

# Step 4:
# Forward the container port to a host
kubectl port-forward $POD_NAME 8000:80
