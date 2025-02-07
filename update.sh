#!/bin/bash

cd "$(dirname "$0")"

. .env

# Check that directories are set
[ -z "$SD_DATADIR" ] && echo "SD_DATADIR not set! (check your .env!)" >&2 && exit 1
[ -z "$SD_MODELSDIR" ] && echo "SD_MODELSDIR not set! (check your .env!)" >&2 && exit 1

./webui.sh --debug --listen --use-rocm --insecure --update --test
