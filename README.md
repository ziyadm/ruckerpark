# Rucker Park

## Setup (keep this in the new repo)

### Prod box

1. Clone this repo on the prod box.
2. Run `setup_docker.sh`.
3. Run `docker-compose up --build` to make sure everything is working correctly.

### Dev box

1. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension in Visual Studio Code.
2. Open the project root directory in Visual Studio Code.
3. At the bottom right, click the prompt to reopen the project in a container.

Note: The first time you open the project in the container it might take a minute to open, it's setting up the whole environment exactly how it needs to be.

#### Building image and running container in the background

`docker-compose down && docker-compose build && docker-compose up --detach`

This can also be done directly in Visual Studio Code, which is a pretty nice workflow.

#### Hot Reloading

Setting up hot reloading with the web code is complicated because that usually happens through `npm` (which spins up its own server that watches the files for changes and rebuilds when needed).

This isn't easily supported in the server.

Just restart the docker container using the command above, it's pretty quick anyways.

## Updating Python version

1. Update the Python version in `.devcontainer/devcontainer.json`.
2. Update the `python.analysis.extraPaths` property in `.vscode/settings.json`.
3. Update the Python Docker image version in `backend/Dockerfile`.
4. Update the Python version in `backend/pyproject.toml`.
