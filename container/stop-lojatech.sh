#!/bin/bash

echo "Stopping Lojatech..."

if podman ps | grep -q lojatech-app; then
    podman stop lojatech-app
    echo "✅ Container stopped"
else
    echo "Container is not running"
fi
