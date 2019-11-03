#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=sklearn .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app, expose port 80 whie publishing to port 8000
docker run --name sklearn-app -p 8000:80 sklearn:latest 
