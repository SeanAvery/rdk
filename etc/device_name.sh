#!/bin/bash

set -e

if [ "$(uname)" == "Linux" ]; then
    model=$(cat /sys/firmware/devicetree/base/model | tr -d '\0')

    read -a arr <<< "$model"
    for i in "${arr[@]}"
    do
        if [ "$i" == "Raspberry" ]; then
            echo "Raspberry"
            break

        elif [ "$i" == "Jetson" ]; then
            echo "Jetson"
            break
        fi
    done
fi

exit 0