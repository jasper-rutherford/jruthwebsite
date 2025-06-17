prod:
	docker compose down
	docker compose --progress=plain build --no-cache
	docker compose up -d

dev:
	npm run dev
