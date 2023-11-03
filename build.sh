#!/bin/sh
bombsquad_version=1.7.27

sed -i Dockerfile -e "s/^ARG BOMBSQUAD_VERSION.*/ARG BOMBSQUAD_VERSION=\"${bombsquad_version}\"/"

docker-slim build --remove-file-artifacts --delete-generated-fat-image \
    --include-shell \
    --dockerfile=Dockerfile \
    --dockerfile-context=. \
    --http-probe-off \
    --include-path /usr/lib/python*/uuid.py \
    --include-path /app/bombsquad-server \
    --tag "bombsquad:$bombsquad_version-amd64"
