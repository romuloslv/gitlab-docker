#!/bin/bash

register() {

  docker exec -it runner1 \
    gitlab-runner register \
      --non-interactive \
      --registration-token $1 \
      --locked=false \
      --description docker-stable \
      --url http://gitlab.local \
      --executor docker \
      --docker-image docker:stable \
      --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
      --docker-network-mode lab
}

register $1