nuke-run: submodules images generate-keys nuke run

nuke:
	cd gateway && make nuke
	cd frontend && docker compose down -v

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

generate-keys:
	cd gateway && make generate-keys-docker
