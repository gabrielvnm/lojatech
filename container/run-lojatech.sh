#!/bin/bash

if ! command -v podman &> /dev/null; then
    echo "Podman not installed!"
    echo ""
    echo "Please install Podman:"
    echo "  - Fedora/RHEL/Bazzite: sudo dnf install podman"
    echo "  - Ubuntu/Debian: sudo apt install podman"
    echo "  - macOS: brew install podman"
    echo ""
    exit 1
fi

echo "Podman found"

if lsof -Pi :8080 -sTCP:LISTEN -t >/dev/null 2>&1; then
    echo "Port 8080 is already in use"
    echo "Using port 8081 instead"
    PORT=8081
else
    PORT=8080
fi

if podman ps -a | grep -q lojatech-app; then
    echo "Removing existing container..."
    podman stop lojatech-app 2>/dev/null
    podman rm lojatech-app 2>/dev/null
fi

if ! podman images | grep -q lojatech; then
    echo "Loading image from file..."
    if [ -f lojatech-image.tar.gz ]; then
        gunzip -c lojatech-image.tar.gz | podman load
    else
        echo "Image file not found!"
        exit 1
    fi
fi

echo "Starting Lojatech application..."
podman run -d \
    --name lojatech-app \
    -p ${PORT}:3000 \
    lojatech:latest

if [ $? -eq 0 ]; then
    echo ""
    echo "Lojatech is running successfully!"
    echo ""
    echo "Access the application at: http://localhost:${PORT}"
    echo ""
    echo "Useful commands:"
    echo "   Stop:    podman stop lojatech-app"
    echo "   Start:   podman start lojatech-app"
    echo "   Logs:    podman logs lojatech-app"
    echo "   Status:  podman ps"
    echo ""
else
    echo "Failed to start container!"
    exit 1
fi
