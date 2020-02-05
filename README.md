<include a CircleCI status badge, here>

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv: (i.e) `python3 -m venv ~/.devops`
* Activate it: (i.e) `source ~/.devops/bin/activate` 
* Run `make install` to install the necessary dependencies

### Kubernetes Steps

* [Setup and Configure Docker](https://docs.docker.com/get-docker/)
* [Setup and Configure Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
* [Setup and Configure Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Make a prediction: `./make_prediction.sh`
4. upload Docker image: `./upload_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


## [Important] Delete Cluster

After you’re done deploying your containerized application and making test predictions via Kubernetes cluster, you should clean up your resources and delete the kubernetes cluster with a call to `minikube delete`.

You can also pause your work and save the cluster state with a call to `minikube stop`.