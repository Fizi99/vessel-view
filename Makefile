.PHONY: build run compose-dev-up compose-dev-down compose-prod-up compose-prod-down

build:
	cd app && go build -o bin/server .

run:
	cd app && go run .

compose-dev-up:
	docker compose --env-file .env.dev -f compose.dev.yaml up --build

compose-dev-down:
	docker compose -f compose.dev.yaml down -v

volume-clean-all:
	docker volume prune --force
	docker volume rm vesselview_dev_db_data
	docker volume rm vesselview_prod_db_data

compose-prod-up:
	docker compose --env-file .env -f compose.prod.yaml up --build

compose-prod-down:
	docker compose -f compose.prod.yaml down
