# [MJT Services](https://github.com/mjt-services) Vast.ai Container 2025

This is a container acting as a wrapper for the vast.ai CLI.

## Why?

Python has a lot of ugly cords to keep the environment tidy. Better to just use a container to bundle those cords.

## How to use

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
