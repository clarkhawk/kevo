#!/bin/bash
set -e

# setup.sh
# Prepares the development environment for Kevo.
# Run this after cloning the repo if you plan to work on the code.

echo "=== Setting up Kevo (development) ==="
echo ""

echo "Initializing submodules (dash-to-dock, WhiteSur, Just Perfection, Blur my Shell)..."
git submodule update --init --recursive

echo ""
echo "Done. All submodules are ready under modules/."
echo "To install Kevo on your system, run ./install.sh"