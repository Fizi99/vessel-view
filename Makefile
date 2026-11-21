.PHONY: build run compose-dev-up compose-dev-down compose-dev-down-clean compose-prod-up compose-prod-down compose-prod-down-clean

build:
	cd app && go build -o bin/server .

run:
	cd app && go run .

compose-dev-up:
	docker compose --env-file .env.dev -f compose.dev.yaml up --build

compose-dev-down:
	docker compose -f compose.dev.yaml down

compose-dev-down-clean:
	docker compose -f compose.dev.yaml down -v

compose-prod-up:
	docker compose --env-file .env -f compose.prod.yaml up --build

compose-prod-down:
	docker compose -f compose.prod.yaml down

compose-prod-down-clean:
	docker compose -f compose.prod.yaml down -v

volume-clean-all:
	docker compose -f compose.dev.yaml down -v
	docker compose -f compose.prod.yaml down -v
