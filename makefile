prod:
	docker compose down
	docker compose build --no-cache --progress=plain .
	docker compose up -d

dev:
	npm run dev
