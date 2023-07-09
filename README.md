# docker_rctmon

This is a multi-arch docker build of [svalouch/rctmon](https://github.com/svalouch/rctmon), a metrics extractor for metrics of RCT PowerStorage, a solar inverter from [RCT Power GmbH](http://www.rct-power.com)

## Usage

This project auto-publishes a multi-arch (armv7, arm64, amd64) docker image to [Docker Hub](https://hub.docker.com/r/sfudeus/rctmon).
The exporter runs on port 9831 by default (exposed port in `Dockerfile`, but can be configured to run on a different port.

It can be run with the following command,
with `$configFile`, being a absolute path to a rctmon config file.

```Shell
docker run -it --rm -v $configFile:/config.yaml -p 9831:9831 sfudeus/rctmon:latest
```

A basic config can be found in the [original project](https://github.com/svalouch/rctmon/blob/main/config.example.yml).
