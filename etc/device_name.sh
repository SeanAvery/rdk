#!/bin/bash

set -e

if [ "$(uname)" == "Linux" ]; then
    model=$(awk '{print $1}' /sys/firmware/devicetree/base/model)
    echo $model
fi

exit 0