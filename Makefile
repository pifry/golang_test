build:
	go build -o bin/main main.go

run:
	go run main.go

clean:
	rm -rf bin

docker_build:
	docker run --rm --user $(shell id -u):$(shell id -g) -v $(shell pwd):/go/src/app -w /go/src/app -e XDG_CACHE_HOME=/go golang:1.15 make build