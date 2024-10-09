# Java Web App (Execise 3 )

## Preface
This repository helps to dockeize and deploy java web apps using [Tomcat](https://tomcat.apache.org/) as web server, [Minikube](https://minikube.sigs.k8s.io/docs/) as Container Orchestration Platform and [Docker](https://www.docker.com/) as Containerization platform.


## Install
Perform the following steps:
1. Download and install Apache Maven.
1. Download and install Docker.
1. Download and install Minikube & Kubectl.

## Steps
1. Build the app using maven in root Dir
    ```bash
    #this will produce .war file that will be deployed 

    mvn clean install
    ```
    ![App_Built](https://github.com/OmarElshrief/java-web-app/blob/main/screenshots/Built%20successful.png)


1. write a Dockerfile [Dockerfile](https://github.com/OmarElshrief/java-web-app/blob/main/Dockerfile)
    ```bash
    #this will build an image from your built App

    Docker build -t java-web-app 
    ```

1. write a docker-compose file [docker-compose](https://github.com/OmarElshrief/java-web-app/blob/main/docker-compose.yml)
    ```bash
    #Used to build muilti-Container Apps

    docker-compose 
    ```

1. push the image to Docker Hub (Optional!)
    ```bash
    docker tag java-web-app omarelshrief/java-web-app
    docker push omarelshrief/java-web-app
    ```

1. write Deploymnt file [deployment](https://github.com/OmarElshrief/java-web-app/blob/main/deployment.yaml)
    ```bash
    #this will deploy your App on Kubernetes Cluster

    kubectl create -f deployment.yaml 
    ```

1. write Service file [Service](https://github.com/OmarElshrief/java-web-app/blob/main/service.yaml)
    ```bash
    #Expose your app with NodePort service

    kubectl create -f service.yaml
    ```

1. Up & Running!
    ```bash
    #List All Deployed Resources

    kubectl get all
    ```
    ![All_Resources](https://github.com/OmarElshrief/java-web-app/blob/main/screenshots/kubernetes%20resources.png)

    ![Done!](https://github.com/OmarElshrief/java-web-app/blob/main/screenshots/Done!.png)









