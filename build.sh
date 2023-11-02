#!/bin/sh
docker-slim build --remove-file-artifacts --delete-generated-fat-image --tag bombsquad:1.7.28-amd64 \
    --include-shell --include-cert-all --dockerfile=Dockerfile --dockerfile-context=. --show-blogs --http-probe-off
