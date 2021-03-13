[![CircleCI](https://circleci.com/gh/khordoo/microservices-ml-kubernetes.svg?style=svg)](https://circleci.com/gh/khordoo/microservices-ml-kubernetes)


## Project Overview

In this project are operationalizing a Machine Learning Microservice API. 

we are using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More infromation about about the data, which was initially taken from Kaggle, cab ne read on [the data source site](https://www.kaggle.com/c/boston-housing). This project exposes the the ML model using a Python flask endpoint.The end point serves out predictions (inference) about housing prices through API calls. 

### Project Tasks

The objective is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 

In this project will perfrom the following:
* Test the code using linting
* Used a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested





## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies
Then perform the following: 
1

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Making predictions

The project was deployed using Kubernetes and is serving the predictions on port 8000.
We can test making predictions by runing the following:

```sh
$ ./make_prediction.sh
```