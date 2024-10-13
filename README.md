# blocky-docker

Docker image of Blocky, fast and lightweight DNS proxy as ad-blocker.

## Goal

To provide rootless image with no set capabilities and pre-populated block lists.

## Images

Images are based on distroless base images, use official binaries and published in [Quay](https://quay.io/repository/flakybitnet/blocky-server),
[GHCR](https://github.com/flakybitnet/blocky-docker/pkgs/container/blocky-server), [AWS](https://gallery.ecr.aws/flakybitnet/blocky/server) and Harbor registries.

## Usage

Usage is not different from [the official images](https://0xerr0r.github.io/blocky/latest/installation/#run-with-docker). So, you can run the server by one of the commands:

```
$ docker run -v /path/to/config.yml:/app/config.yml -p 4000:4000 -p 1053:1053/udp quay.io/flakybitnet/blocky-server
$ docker run -v /path/to/config.yml:/app/config.yml -p 4000:4000 -p 1053:1053/udp ghcr.io/flakybitnet/blocky-server
$ docker run -v /path/to/config.yml:/app/config.yml -p 4000:4000 -p 1053:1053/udp public.ecr.aws/flakybitnet/blocky/server
$ docker run -v /path/to/config.yml:/app/config.yml -p 4000:4000 -p 1053:1053/udp harbor.flakybit.net/blocky/server
```

## Source

Source code are available at [Gitea](https://gitea.flakybit.net/flakybit/blocky-docker) and mirrored to [GitHub](https://github.com/flakybitnet/blocky-docker).
