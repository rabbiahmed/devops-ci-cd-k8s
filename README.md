# DevOps CI/CD Demo — Python Microservice

This project demonstrates a full CI/CD pipeline:

- Python microservice (FastAPI)
- Docker containerization
- Kubernetes deployment (k3d / k3s)
- CI: GitLab CI (build, test, push to ECR)
- CD: Jenkins (deploy to k8s)
- Provisioning: Ansible (Jenkins, k3s)

## Quickstart (local)
1. Start k3d cluster: `k3d cluster create dev-cluster`
2. Build image locally: `make docker-build`
3. Deploy: `kubectl apply -f k8s/`


See `/docs/architecture.md` for details.