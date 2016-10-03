# liveagent-docker
Dockerfiles for [LiveAgent standalone](https://www.ladesk.com/pricing/standalone/).

## Requirements

* [docker]
* [docker-compose]

## Installation

1. Download a most recent version of application to the `app` folder.

2. Build and run liveagent

    docker-compose up -d

3. Open `https://your.domain` with your web browser.

## Starting/Stopping

### Start

    docker-compose start

### Stop

    docker-compose stop

## Removing

### Remove the containers

    docker-compose stop && docker-compose rm

## More informations

All the database data are stored in `db` folder.

If you want to know how to use docker-compose, see [the overview
page](https://docs.docker.com/compose).

[docker]: http://docs.docker.com/engine/installation/
[docker-compose]: https://docs.docker.com/compose/install/
