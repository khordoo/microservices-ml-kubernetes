[![CircleCI](https://circleci.com/gh/khordoo/microservices-ml-kubernetes.svg?style=svg)](https://circleci.com/gh/khordoo/microservices-ml-kubernetes)


## Machine Learning at Scale using Kubernetese

The project's goal is to operationalize a machine learning microservice using kubernetes. we are using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More infromation about about the data, which was initially taken from Kaggle, cab ne read on [the data source site](https://www.kaggle.com/c/boston-housing). This project exposes the the ML model using a Python flask endpoint.The end point serves out predictions (inference) about housing prices through API calls. 

### Install

- Docker
- Virtualbox

For Ubuntu:

Binary download and install
```sh
 curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 sudo install minikube-linux-amd64 /usr/local/bin/miniku
``` 

Start the cluster

```sh
 minikube start
```

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies
Then perform the following: 
1

### Running the application

The project was deployed using Kubernetes and is serving the predictions on port 8000.
We can test making predictions by runing the following:

- 1.  Start a local cluster, using the following:

```sh
$ minikube start
```
- 2.  deploy the application in kubernetes cluster:
```sh
./run_kubernetes.sh
```
- 3. Wait untile the pos is up and running. Open a separate terminal windows and run the following for making a prediction

```sh
$ ./make_prediction.sh
```
- 4. Clean up: delete the cluster
```sh 
$minikube delete
```

### Sample Response
Here is a sample response from the app

```json
{
  "predicitons": [
    20.4566789
  ]
}
```

