#!/bin/bash
set -e

    # eval "$@"
    torchserve --start --model-store=/mnt/models/model-store --ts-config=/mnt/models/config/config.properties
    python /home/model-server/kserve_wrapper/__main__.py 
    
# prevent docker exit
tail -f /dev/null
