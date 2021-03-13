#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mkhordoo/house-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath house-prediction-app

# Step 3:
kubectl get po

# Step 4:
# Forward the container port to a host

