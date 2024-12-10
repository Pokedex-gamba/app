# App

Ties frontend and backend together and provides utility commands to make starting the app easier.

## Commands

| Command | Description |
|:---|:---|
`make` or `make nuke-run` | updates git and it's submodules, pulls and builds (if needed) new container images, (re)generates new keys, `deletes ALL` app data and starts the app
`make nuke` | deletes all app data
`make run` | starts the app
`make stop` | stops the app
`make rerun` | restarts the app
`make submodules` | updates git and it's submodules
`make images` | pulls and builds (if needed) new container images
`make down` | stops and removes the containers without deleting app data
`make redeploy` | redeploys the app by stopping and removing all containers and starting the app again
`make update` | updates git and it's submodules, pulls and builds (if needed) new container images
`make upgrade` | updates git and it's submodules, pulls and builds (if needed) new container images and redeploys the app
`make generate-keys` | (re)generates new keys

## Troubleshooting

The first start of the app takes a while so let it load!\
If it's still not working as it should try restarting it (`make rerun`).
