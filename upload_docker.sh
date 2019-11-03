#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="sklearn:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
# Step 3a: Login to Dockerhub
docker login -u leets
# Step 3b: Tag Image
docker tag sklearn leets/$dockerpath
# Step 3c: Push Image
docker push leets/$dockerpath

