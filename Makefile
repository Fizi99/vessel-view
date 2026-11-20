.PHONY: build run

build:
	cd app && go build -o bin/server .

run:
	cd app && go run .