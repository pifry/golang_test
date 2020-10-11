build:
	go build -o bin/main main.go

run:
	go run main.go

clean:
	rm -rf bin

docker_build:
	docker run --rm -v $(shell pwd):/usr/src/app -w /usr/src/app golang:1.15 make build