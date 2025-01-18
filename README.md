# [MJT Services](https://github.com/mjt-services) Vast.ai CLI 2025

This is a docker container acting as a wrapper for the [vast.ai](https://vast.ai) CLI.

## Why?

Python has a lot of ugly cords it needs to be plugged into the outside world. vast.ai CLI has a few cords as well. Better to just use a container to bundle those cords.

## How to use

Create a `.env` file an in the root of the project folder.

Setup the environment variables:

```properties
IMAGE_TAG=mjtdev/vastai-cli:latest
NAME=vast-cli
```


Build the container:

```bash
./scripts/build.sh
```

Run the CLI

```bash
./scripts/bin/vastai --help
```

See  https://cloud.vast.ai/cli/ for more information on the vast.ai CLI.

In particular you will want to set up your API key which will be stored inside a `./home` folder within this project directory, along with the other cache and config files the `vastai` CLI creates and uses.
