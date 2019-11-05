[![CircleCI](https://circleci.com/gh/leetsg0/ML_Ops/tree/master.svg?style=svg)](https://circleci.com/gh/leetsg0/ML_Ops/tree/master)

## Project Overview

This project operationalizes a Machine Learning Microservices API.

A pre-trained, 'sklearn' model is provided and is trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).  This project operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The objective of this project is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project will:
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


## Setup the Environment

For this specific project, I created an ubuntu 18.04 LTS VM using virtual box and made sure that virtual machine capability is enabled.
See other notes below.
* Install Git `sudo apt install -y git`
* Clone the repo `git clone https://github.com/leetsg0/ML_Ops.git`
* Sudo apt install: Python, Python3, socat, docker, kubectl, minikube, wget, curl, make, vim or just run shell script `./ubuntu_sw_setup.sh` (make sure to change the mod to executable)
* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

Note: I did run into virtualization issues when running minikube.  To run minikube, the environment needs KVM or virtualbox installed.  To work around the issue, I created the VM to have at least 2 vCPUs.  Then when the environment is set up, you can run the following command:
* `sudo minikube --vm-driver=none start`

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Uploading to Dockerhub
* Run Upload: `./upload_docker.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
