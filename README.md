# Build and Push React App

## Overview

This repository automates the process of building, testing, and deploying a React application to Azure Container Apps using GitHub Actions. The workflow ensures that every push and pull request to the `main` branch triggers a CI/CD pipeline.

## Features

- Automated build and test for the React app
- Docker image creation and push to Azure Container Registry (ACR)
- Deployment to Azure Container Apps
- Infrastructure as Code using Terraform


## Terraform Configuration

The Terraform configuration (`terraform/`) manages infrastructure deployment:


