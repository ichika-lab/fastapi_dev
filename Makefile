up:
	docker compose up -d

upb:
	docker compose up -d --build

down:
	docker compose down

start:
	docker compose exec -it app /bin/sh

stop:
	docker compose stop

logs:
	docker compose logs -f

ps:
	docker compose ps

exec-app:
	docker compose exec -it app bash

exec-psql:
	docker compose exec -it db psql -U postgres