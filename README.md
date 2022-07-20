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

## Usage

```
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

## Documentation

You can easily setup Mockbin via environment variables. This is list of default values.

```
- MOCKBIN_PORT=8000
- MOCKBIN_QUITE=false
- MOCKBIN_REDIS=redis://redis:6379
```

## Development

See [how to contribute](https://contributte.org/contributing.html) to this package.

This package is currently maintaining by these authors.

<a href="https://github.com/f3l1x">
    <img width="80" height="80" src="https://avatars2.githubusercontent.com/u/538058?v=3&s=80">
</a>

-----

Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Also thank you for using this package.
