#!/bin/bash

cd "$(dirname "$0")"

export SD_DATADIR="/ssd/sd_data"
export SD_MODELSDIR="/ssd/sd_models"

export SD_PIP_DEBUG=true
export SD_INSTALL_DEBUG=true

export LD_PRELOAD=libtcmalloc.so.4
./webui.sh --debug --listen --use-rocm --insecure --quick --skip-all
