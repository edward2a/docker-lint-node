DOCKER_REPO = edward2a/lint-node

.PHONY: build publish

build:
	docker build -t ${DOCKER_REPO} .

publish:
	docker push ${DOCKER_REPO}
