#!/bin/bash
TAG=$(echo "${GITHUB_SHA:-$(git rev-parse HEAD)}" | cut -c -7)
cd .. && docker build . -t optimum-habana:${TAG} -f docs/Dockerfile.coreweave
