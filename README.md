# A Basic Example of IAC Terraform Deployment to Azure

## Introduction

This Repository gives a simple example of deploying infrastructure as code to Azure.\
It's purposes is to create a simple Web application that will be hosted.

# Deployment Order

Note: Usually I would do Separation via repositories but so it's easier to view it's all in one repository. 

Regardless the order to deploy the directories is the following:
1. management-tf
2. app
3. roles-tf
4. app-tf

## Key Goals

1. ACR
    - The Azure Container Registry will be utilised to store images for the web application. 
    - Will also have a folder called *app/* which will be used to create a simple Flask Hello World app to be built by **docker** and then pushed to the ACR
2. App Service
    - Will host the image inside the ACR
3. Application Gateway
    - Will use this for routing traffic to the App Service
4. DNS
    - Aim to host the simple web application with a custom domain
5. SSL
    - After setting up the domain ideally I would like to secure the simple web app
6. Pipelines
    - Would like to have pipelines to run the IAC
    - Would also like code to build the Flask application image