# How To Build the Flask App & Push to ACR

1. Make sure you are in this directory
2. Login to Azure, ```az login``` 
3. ```docker login <acr_name>.azurecr.io```
4. ```docker build -t <image_name> .``` 
    - Ensure the name of the image is of the form **<acr_name>.azurecr.io/<repo_name>:<tag_version>**
5. ```docker push <acr_name>.azurecr.io/<repo_name>:<tag_version>```