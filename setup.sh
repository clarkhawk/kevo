#!/bin/bash
set -e

echo "Setting up Kevo..."
echo ""

echo "Initializing submodules (dash-to-dock, WhiteSur, Just Perfection, Blur my Shell)..."
git submodule update --init --recursive

echo ""
echo "Done. All submodules are ready under modules/."
