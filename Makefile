build:
	docker compose build

up:
	docker compose up --detach --remove-orphans

exec:
	docker compose exec --user=app php-fpm bash
