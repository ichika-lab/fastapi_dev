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

current:
	docker compose exec fastapi alembic current

base:
	docker compose exec fastapi alembic downgrade base

head:
	docker compose exec fastapi alembic upgrade head

revision:
	docker compose exec fastapi alembic revision --autogenerate -m "${CMT}"