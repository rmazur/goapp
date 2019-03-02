include make_env

build: Dockerfile.scratch
	export GOPATH=$(PWD)
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main ./src
	docker build -t example-scratch -f Dockerfile.scratch .

run:
	docker run -it example-scratch

default: build