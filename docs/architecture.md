# Architecture

- GitLab CI builds & tests the app, pushes Docker images to ECR
- Jenkins watches for new images and deploys to k3s (kubectl apply)
- Ansible provisions Jenkins and k3s nodes on demand