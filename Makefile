

.PHONY: run
run:
	@docker compose down --remove-orphans && docker compose up --build
