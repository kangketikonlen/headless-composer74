#!/bin/bash
docker run --rm -u "$(id -u):$(id -g)" -v $(pwd):/app -w /app headless-composer74 composer install --ignore-platform-reqs
