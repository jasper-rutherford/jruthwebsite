prod:
	docker compose down
	docker compose build --no-cache
	docker compose up -d

dev:
	npm run dev
