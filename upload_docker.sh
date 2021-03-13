#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mkhordoo/house-prediction

# Step 2:  
# Authenticate & tag
docker login --username $USERNAME --password $PASSWORD 
echo "Docker ID and Image: $dockerpath"
docker tag house-prediction:latest mkhordoo/house-prediction:latest

# Step 3:
docker push mkhordoo/house-prediction:latest
