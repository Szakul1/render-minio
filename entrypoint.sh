#!/usr/bin/env sh
# wrapper for docker entrypoint that takes into account the PORT env var

exec docker-entrypoint.sh server --console-address "0.0.0.0:10000" --address "0.0.0.0:9000" /data
