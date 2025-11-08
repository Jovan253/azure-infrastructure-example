# Application Terraform Repository

## Summary
This repository is responsible for deploying the app service to view the application.

## Key Points
- The App Service is integrated into the vnet so it can pull the image from the ACR via Private Endpoint
- The App Service is authenticated to the ACR via the User Assigned Identity