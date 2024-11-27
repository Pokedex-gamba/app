nuke-run: submodules images generate-keys nuke run

nuke:
	cd frontend && docker compose down -v
	cd gateway && make nuke

run:
	cd gateway && make run
	cd frontend && docker compose up -d

stop:
	cd gateway && make stop
	cd frontend && docker compose stop

rerun: stop run

submodules:
	git pull
	git submodule update --init --recursive

images:
	cd gateway && make update-containers
	cd frontend && docker compose pull

down:
	cd gateway && make down
	cd frontend && docker compose down

redeploy: down run

update: submodules images

upgrade: update redeploy

generate-keys:
	cd gateway && make generate-keys-docker
