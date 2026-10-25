<h1 align=center>Dockette / Mockbin</h1>

<p align=center>
   Trace HTTP requests with pleasure.
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

<p align=center>
    <a href="https://hub.docker.com/r/dockette/mockbin/"><img src="https://img.shields.io/docker/stars/dockette/mockbin.svg?style=flat-square"></a>
    <a href="https://hub.docker.com/r/dockette/mockbin/"><img src="https://img.shields.io/docker/pulls/dockette/mockbin.svg?style=flat-square"></a>
    <a href="https://bit.ly/ctteg"><img src="https://img.shields.io/gitter/room/contributte/contributte.svg?style=flat-square"></a>
    <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-me-brightgreen?style=flat-square"></a>
</p>

-----

Trace HTTP requests with pleasure. [Mockbin](https://github.com/holyfork/kong-mockbin) with Redis storage.

## Features

- Node.js 16 on Alpine
- Port `8000`, stores requests in Redis

## Usage

```yaml
# docker-compose.yml
version: "3.7"

services:
    httpdump:
        image: dockette/mockbin
        ports:
            - 8000:8000
        environment:
            - MOCKBIN_REDIS=redis://redis:6379

    redis:
        image: redis:7-alpine
        ports:
            - 6379:6379
```

## Configuration

Set these environment variables. The values are the defaults.

```sh
MOCKBIN_PORT=8000
MOCKBIN_QUITE=false
MOCKBIN_REDIS=redis://redis:6379
```

## Versions

| Version | Release |
|---------|---------|
| `dockette/mockbin:YYYY.MM.DD` | release `YYYY.MM.DD` |
| `dockette/mockbin:latest` | latest build of `master` |

Releases are listed on [GitHub](https://github.com/dockette/mockbin/releases).

## Development

```sh
make docker-build   # build the image
make docker-push    # push the image
make test-up        # start Mockbin and Redis with docker-compose
make test-in        # open a shell in the Mockbin container
make version        # print VERSION
make release        # set today's date in VERSION
```

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to
[support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
