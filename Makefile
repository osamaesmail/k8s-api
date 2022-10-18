include .env.make
export

.PHONY: help docker-build docker-push
.DEFAULT: help # Running Make will run the help target

help: ## Show Help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

docker-build: ## build deployment iamage
	docker build -t ${NAME} .

docker-push: ## push to docker hub
	echo "pushing ${DOCKER_HUB}/${NAME}:${VERSION}"
	docker tag ${NAME} ${DOCKER_HUB}/${NAME}:${VERSION}
	docker push ${DOCKER_HUB}/${NAME}:${VERSION}

docker-prod: ## build then push docker image
	make docker-build
	make docker-push
