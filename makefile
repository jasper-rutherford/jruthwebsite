prod:
	docker compose down
	docker compose --progress=plain build --no-cache
	docker compose up -d

dev:
	npm run dev


# Rebuild and restart only caddy
rebuild-caddy:
	docker compose build --no-cache caddy
	docker compose up -d caddy
