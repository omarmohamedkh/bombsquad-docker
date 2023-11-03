## Dockerized BombSquad Server

[![Docker Pulls](https://img.shields.io/docker/pulls/alibo/bombsquad?style=flat-square)](https://hub.docker.com/r/omrmohamed/bombsquad)

An unofficial docker image for server app of [BombSquad Game](https://www.froemling.net/apps/bombsquad)

The server is running in tmux session to easily control the server


### Usage


```bash
docker run -d -it \
           -p 43210:43210/udp \
           --name bombsquad \
           -v `pwd`/config.yaml:/app/bombsquad-server/config.yaml \
           omrmohamed/bombsquad
```

You can use **config.yaml** in this repo. 



### Dockerhub

See: https://hub.docker.com/r/alibo/bombsquad
