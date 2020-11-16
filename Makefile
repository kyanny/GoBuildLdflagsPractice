all: clean build

version := $(shell git rev-parse --short HEAD)

build:
	go build -ldflags="-X 'main.Version=$(version)'" -o main

clean:
	rm -f ./main
