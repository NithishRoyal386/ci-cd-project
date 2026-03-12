# ci-cd-project
ci/cd pipe line automation on aws

**AWS CI/CD Pipeline Project**

Project Overview

This project demonstrates the implementation of a Continuous Integration and Continuous Deployment (CI/CD) pipeline using Amazon Web Services. The pipeline automatically builds and processes code changes whenever new updates are pushed to the repository.

The pipeline is created using Amazon Web Services services and integrates with GitHub for automated workflow execution.

**Technologies Used**

Amazon Web Services

AWS CodePipeline

AWS CodeBuild

GitHub

YAML configuration

**CI/CD Pipeline Architecture**

Developer
   ↓
GitHub Repository
   ↓
AWS CodePipeline
   ↓
AWS CodeBuild
   ↓
**Application Build & Deployment**

How the Pipeline Works

Developer pushes code to the GitHub repository.

AWS CodePipeline automatically detects the change.

The pipeline triggers AWS CodeBuild.

CodeBuild runs the build instructions defined in the buildspec.yml file.

The pipeline processes the build and prepares the application for deployment.

**Repository Structure**

project-folder
│
├── buildspec.yml
├── app.py
└── README.md
buildspec.yml Example
version: 0.2

phases:
  install:
    commands:
      - echo Installing dependencies

  build:
    commands:
      - echo Build started

  post_build:
    commands:
      - echo Build completed
      
**Key Features**

Automated CI/CD pipeline

Integration with GitHub

Automated build process

Cloud-based pipeline using AWS services

**Learning Outcome**

This project helped in understanding:

CI/CD pipeline architecture

AWS DevOps services

Automated build processes

GitHub integration with AWS

**Author**

Nithish Royal Bandi |
Electronics and Communication Engineering |
VIT Vellore 
