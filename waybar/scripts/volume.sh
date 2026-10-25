#!/bin/bash

case "$1" in
    up)
        pactl set-sink-volume @DEFAULT_SINK@ +5%
        ;;
    down)
        pactl set-sink-volume @DEFAULT_SINK@ -5%
        ;;
    *)
        echo "Usage: $0 {up|down}"
        exit 1
        ;;
esac
