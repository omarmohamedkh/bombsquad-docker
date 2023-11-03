FROM omrmohamed/archlinux:base-devel

ARG BOMBSQUAD_VERSION="1.7.27"
ARG TARGETPLATFORM="amd64"
ARG BUILDPLATFORM

ENV LANG en_US.utf8

RUN sed -e 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' -i /etc/locale.gen && locale-gen
RUN pacman -Sy --needed --noconfirm python glibc-locales sdl2 wget tmux

WORKDIR /app

RUN if [[ "${TARGETPLATFORM}" = "amd64" ]]; then \
    wget https://files.ballistica.net/bombsquad/builds/old/BombSquad_Server_Linux_x86_64_${BOMBSQUAD_VERSION}.tar.gz -O- | tar -xzvf - ; \
    elif [[ "${TARGETPLATFORM}" = "arm64" ]]; then \
    wget https://files.ballistica.net/bombsquad/builds/old/BombSquad_Server_Linux_Arm64_${BOMBSQUAD_VERSION}.tar.gz -O- | tar -xzvf - ; \
    else \
    echo "${TARGETPLATFORM}}" >&2; \
    fi; \
    mv BombSquad_Server*/ bombsquad-server

WORKDIR /app/bombsquad-server

EXPOSE 43210/udp

CMD tmux new-session -d './bombsquad_server; tmux wait -S ping'; tmux wait ping;
