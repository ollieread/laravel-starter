#!/bin/bash

DESTROY=${DESTROY:-false}

cleanup() {
    trap '' EXIT SIGTERM SIGINT SIGHUP

    echo ""
    if [ "$DESTROY" = "true" ]; then
        echo "Stopping and removing containers..."
        ./vendor/bin/sail down
    else
        echo "Stopping containers..."
        ./vendor/bin/sail stop
    fi
}

trap cleanup EXIT SIGTERM SIGINT SIGHUP

echo "Starting Sail..."
./vendor/bin/sail up
