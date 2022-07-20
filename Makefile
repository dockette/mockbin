DOCKER_IMAGE=dockette/mockbin

docker-build:
	docker build --pull -t ${DOCKER_IMAGE} .

docker-push:
	docker push ${DOCKER_IMAGE}

test-up:
	docker-compose up

test-in:
	docker-compose exec mockbin bash
