IMAGE_NAME = devops-demo-app
TAG = latest

.PHONY: docker-build docker-run docker-clean test

docker-build:
docker build -t ${IMAGE_NAME}:${TAG} -f docker/Dockerfile .

docker-run:
docker run --rm -p 8000:8000 ${IMAGE_NAME}:${TAG}

docker-clean:
docker rmi -f ${IMAGE_NAME}:${TAG} || true

test:
pytest -q src/app/tests