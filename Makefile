export ORG ?= kushmansingh
export IMAGE ?= bootstrap-ecr-cred-helper

all: publish

.PHONY: submodules
submodules:
	@git submodule update --init --recursive

.PHONY: build
build: submodules
	@docker build -t ${ORG}/${IMAGE} .

.PHONY: publish
publish: build
	@docker push ${ORG}/${IMAGE}
