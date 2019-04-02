#!/bin/env bash

set -v -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin &&
docker push "${DOCKER_IMAGE_SLUG}":"${distribution,,}"-"${distribution_version}" &&
[[ "x${distribution_alias}" != "x" ]] &&
  {
  docker tag "${DOCKER_IMAGE_SLUG}":"${distribution,,}"-"${distribution_version}" "${DOCKER_IMAGE_SLUG}":"${distribution,,}"-"${distribution_alias}" &&
  docker push "${DOCKER_IMAGE_SLUG}":"${distribution,,}"-"${distribution_alias}"
} ||
: || exit 2
