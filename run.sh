#!/bin/bash

cd "$(dirname "$0")"

export SD_PIP_DEBUG=true
export SD_INSTALL_DEBUG=true

LD_PRELOAD=libtcmalloc.so.4 ./webui.sh --debug --listen --use-rocm --insecure --quick
