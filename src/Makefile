include make_env

build: Dockerfile.scratch
	rm ../go.mod
	GO111MODULE=on go mod tidy
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
	docker build -t example-scratch -f Dockerfile.scratch .

run:
	docker run -it example-scratch

default: build