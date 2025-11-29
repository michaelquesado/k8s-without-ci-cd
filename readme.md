# Node-K8s

Node-K8s is a sample project demonstrating how to deploy a Node.js application on Kubernetes. It provides a simple REST API and includes configuration files for containerization and orchestration.

## Features

- Node.js REST API
- Docker support
- Kubernetes manifests for deployment
- Example usage and setup instructions

## Getting Started

1. Clone the repository.
2. Build the Docker image.
3. Apply the Kubernetes manifests to your cluster.

## Requirements

- Node.js
- Docker
- Kubernetes cluster

## Usefull commands

```bash
# Build Docker image
docker build -t <username>/<image-name>:<tag> .

# Push the image to DockerHub
docker push <username>/<image-name>:<tag>

# Create k8s namespace
kubeclt creeate ns <namespace-name>

# Apply the changes
kubeclt apply -f k8s/ -n <namespace>

# Do a port forward
kubectl port-forward svc/app-js-svc 8080:80 -n <namespace>

# See the logs
kubectl logs deployment/app-js -n <namespace>
```

## License

This project is licensed under the MIT License.