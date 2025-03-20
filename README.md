# Build and Push React App

## Overview

This repository automates the process of building, testing, and deploying a React application to Azure Container Apps using GitHub Actions. The workflow ensures that every push and pull request to the `main` branch triggers a CI/CD pipeline.

## Features

- Automated build and test for the React app
- Docker image creation and push to Azure Container Registry (ACR)
- Deployment to Azure Container Apps
- Infrastructure as Code using Terraform

## GitHub Actions Workflow

The workflow (`.github/workflows/main.yml`) performs the following steps:

1. **Checkout repository** - Pulls the latest code.
2. **Set up Node.js** - Installs Node.js v18.
3. **Install dependencies** - Runs `npm install` to fetch project dependencies.
4. **Run tests** - Executes unit tests using Jest.
5. **Build React app** - Builds the React application for production.
6. **Log in to Azure Container Registry (ACR)** - Authenticates with ACR using GitHub Secrets.
7. **Build and tag Docker image** - Creates a Docker image and tags it.
8. **Push Docker image to ACR** - Pushes the image to ACR.
9. **Azure login** - Authenticates with Azure.
10. **Deploy to Azure Container Apps** - Deploys the containerized React app to Azure Container Apps.

## Terraform Configuration

The Terraform configuration (`terraform/`) manages infrastructure deployment:

###

## Deployment

1. Clone the repository:
2. Initialize Terraform and deploy infrastructure:
3. Push changes to trigger CI/CD:

## License

This project is licensed under the MIT License.

