#!/bin/bash

cd "$(dirname "$0")"

export SD_PIP_DEBUG=true
export SD_INSTALL_DEBUG=true

./webui.sh --debug --listen --use-rocm --update --insecure --test
