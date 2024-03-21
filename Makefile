TAG := $(shell git rev-parse --short HEAD)

build:
	docker build -f python3.11-slim.dockerfile -t unicorn .

stage:
	docker tag unicorn:latest beafdocker/unicorn:latest
	docker tag unicorn:latest beafdocker/unicorn:${TAG}
	docker push -a beafdocker/unicorn