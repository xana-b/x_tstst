#!/bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/xana/.Xauthority
USER_DIR="/app"

rm -rf ~/.cache/chromium

/usr/bin/node-red -f x_tstst/flow/controller.json &
sleep 10

    chromium --kiosk \
        --fullscreen \
        --start-maximized \
        "http://localhost:1880/ui"
