## Dockerized BombSquad Server

An unofficial docker image for [BombSquad](https://www.froemling.net/apps/bombsquad) server

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
See: [Docker Image](https://hub.docker.com/repository/docker/omrmohamed/bombsquad)
