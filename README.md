# Cloud-Native CI/CD DevOps Platform

A complete cloud-native DevOps project demonstrating containerization, CI/CD automation, Kubernetes orchestration, Infrastructure as Code, and monitoring in a production-style environment.

This project was built as part of a DevOps engineering bootcamp and simulates a real-world DevOps workflow used in modern cloud environments.

---

# Project Highlights

- Containerized Python web application using Docker
- Automated CI/CD pipeline with GitHub Actions
- Kubernetes deployment and service configuration
- Helm-based Kubernetes package management
- Infrastructure provisioning with Terraform
- Monitoring and observability using Prometheus and Grafana
- Local Kubernetes development using Minikube
- Production-style DevOps workflow

---

# Architecture Overview

## DevOps Workflow

```text
Developer Pushes Code
        ↓
GitHub Actions CI/CD Pipeline
        ↓
Docker Image Build
        ↓
Container Image Scan
        ↓
Push Image to DockerHub
        ↓
Deploy to Kubernetes Cluster
        ↓
Helm Release Management
        ↓
Prometheus Monitoring
        ↓
Grafana Dashboards
```

---

# Tech Stack

## DevOps Tools

- Docker
- Kubernetes
- Helm
- Terraform
- GitHub Actions
- Prometheus
- Grafana
- Minikube

## Development

- Python
- Flask
- YAML
- Bash

---

# Project Structure

```bash
.
├── app/
├── Dockerfile
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
├── helm/
│   └── devops-app-chart/
├── terraform/
├── .github/
│   └── workflows/
│       └── deploy.yaml
└── README.md
```

---

# Features

- Fully containerized application
- Automated build and deployment pipeline
- Kubernetes orchestration
- Scalable deployment architecture
- Infrastructure as Code implementation
- Monitoring and observability integration
- Helm-based deployment management

---

# Local Development Setup

## Prerequisites

Ensure the following tools are installed:

- Git
- Docker
- kubectl
- Minikube
- Helm
- Terraform

Optional:
- AWS CLI
- Azure CLI

---

# Clone Repository

```bash
git clone https://github.com/Chrisblurp/cloud-native-project.git
cd cloud-native-project
```

---

# Run Application Locally

Install dependencies:

```bash
pip install -r requirements.txt
```

Start the application:

```bash
initialize python mvenv
python app.py
```

Access the application:

```text
http://localhost:5000
```

---

# Docker Setup

## Build Docker Image

```bash
docker build -t your-dockerhub-username/devops-app .
```

## Run Container

```bash
docker run -p 5000:5000 your-dockerhub-username/devops-app
```

---

# Push Image to DockerHub

## Login

```bash
docker login
```

## Push Image

```bash
docker push your-dockerhub-username/devops-app
```

---

# Kubernetes Deployment

## Start Minikube

```bash
minikube start
```

## Apply Kubernetes Manifests

```bash
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
```

## Verify Deployment

```bash
kubectl get pods
kubectl get services
```

---

# Helm Deployment

## Create Helm Release

```bash
helm install devops-app ./helm/devops-app-chart
```

## Verify Helm Release

```bash
helm list
```

---

# CI/CD Pipeline

The project uses GitHub Actions to automate:

- Docker image builds
- Image scanning
- Container registry push
- Kubernetes deployment
- Continuous delivery workflow

## Pipeline Trigger

The pipeline automatically runs on:

- Push to main branch
- Pull requests

---

# Monitoring & Observability

## Monitoring Stack

- Prometheus for metrics collection
- Grafana for visualization
- Kubernetes dashboard integration

## Installed Components

```bash
helm install prometheus prometheus-community/prometheus
helm install grafana grafana/grafana
```

# Cloud-Native CI/CD DevOps Platform

The application infrastructure was deployed on Microsoft Azure using Azure Kubernetes Service (AKS).

The project demonstrates a production-style cloud-native deployment workflow using managed Kubernetes infrastructure in Azure.

---

# Cloud Infrastructure

## Azure Services Used

- Azure Kubernetes Service (AKS)
- Azure Container Registry (optional)
- Azure CLI
- Terraform
- Kubernetes
- Helm

---

# Infrastructure as Code

Terraform was used to provision and manage Azure cloud infrastructure.

## Terraform Workflow

Initialize Terraform:

```bash
terraform init
```

Plan infrastructure:

```bash
terraform plan
```

Apply infrastructure:

```bash
terraform apply
```

---

# AKS Deployment

## Connect to AKS Cluster

```bash
az aks get-credentials \
  --resource-group <RESOURCE_GROUP> \
  --name <AKS_CLUSTER_NAME>
```

## Verify Cluster Connection

```bash
kubectl get nodes
```

## Deploy Application

```bash
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
```

---

# Cloud-Native Features

- Managed Kubernetes cluster using AKS
- Infrastructure provisioning with Terraform
- Scalable container orchestration
- Automated CI/CD deployment pipeline
- Monitoring and observability integration
- Helm-based application management

---

# Monitoring & Observability

Monitoring was implemented inside the AKS cluster using:

- Prometheus
- Grafana
- Kubernetes metrics collection
- Cluster observability dashboards

---

# Skills Demonstrated

- Azure Cloud
- Azure Kubernetes Service (AKS)
- Terraform Infrastructure as Code
- Kubernetes administration
- CI/CD pipeline automation
- Docker containerization
- Helm package management
- Monitoring and observability
- Cloud-native application deployment