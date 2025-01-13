#!/usr/bin/env bash

_basepath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" || die "Couldn't determine the script's running directory, which probably matters, bailing out" 2
_scriptpath="$_basepath/$(basename "${BASH_SOURCE[0]}")"

# echo "${PWD}"

fireboard_repo_dir="fireboard2mqtt_repo"
fireboard_repo_url="https://github.com/gordlea/fireboard2mqtt.git"
fireboard_local_dir="/Users/johlea/dev/personal/fireboard2mqtt"
# if ! use local
# cd "$_basepath"
# if [ ! -d "$fireboard_repo_dir" ] ; then
#     git clone "$fireboard_repo_url" "$fireboard_repo_dir"
#     cd "$fireboard_repo_dir"
#     git checkout main
#     git pull
# fi

# if use local
cd "$_basepath"
# if [ ! -d "$fireboard_repo_dir" ] ; then
rsync -avh --delete --exclude 'target' --exclude '.env' --exclude '.git' ${fireboard_local_dir}/ ${_basepath}/fireboard_repo_dir
# fi


docker run --rm \
  --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -v ${_basepath}:/data \
  homeassistant/aarch64-builder \
  --docker-user $DOCKER_USERNAME --docker-password $DOCKER_PASSWORD \
  --target /data \
  --all --no-cache
  # --amd64 --no-latest --additional-tag beta
  



  # --no-latest \
  # --additional-tag beta \
