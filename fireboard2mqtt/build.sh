#!/usr/bin/env bash

_basepath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" || die "Couldn't determine the script's running directory, which probably matters, bailing out" 2
_scriptpath="$_basepath/$(basename "${BASH_SOURCE[0]}")"

# echo "${PWD}"

docker run --rm \
  --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -v ${_basepath}:/data \
  homeassistant/aarch64-builder \
  --docker-user $DOCKER_USERNAME --docker-password $DOCKER_PASSWORD \
  --target /data \
  --no-latest \
  --additional-tag beta \
  --all
