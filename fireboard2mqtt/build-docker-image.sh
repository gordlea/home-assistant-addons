#!/usr/bin/env bash
# docker run -ti --name hassio-builder --privileged \
#   -v ~/.docker:/root/.docker \
#   -v $(pwd):/data \
#   -v /var/run/docker.sock:/var/run/docker.sock:ro \
#   homeassistant/amd64-builder -t /data --all \
#   -i homeassistant-addon-{arch}-fireboard2mqtt -d gordlea

docker run \
	--rm \
	--privileged \
	-v ~/.docker:/root/.docker \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	-v $(pwd):/data \
	homeassistant/amd64-builder \
		--all \
		-t /data