#!/bin/bash
set -e

echo "=== Installing Kevo ==="
echo ""

# 1. Make sure submodules are present
echo "Step 1/5 — Checking submodules..."
git submodule update --init --recursive

# 2. Install dash-to-dock
echo "Step 2/5 — Installing dash-to-dock..."
cd modules/dash-to-dock
make install
cd ../..

# 3. Install Just Perfection
echo "Step 3/5 — Installing Just Perfection..."
cd modules/just-perfection
./scripts/build.sh -i
cd ../..

# 4. Install Blur my Shell
echo "Step 4/5 — Installing Blur my Shell..."
cd modules/blur-my-shell
make install
cd ../..

# 5. Install WhiteSur theme (GTK + icons)
echo "Step 5/5 — Installing WhiteSur theme..."
cd modules/whitesur-gtk-theme
./install.sh
cd ../..

cd modules/whitesur-icon-theme
./install.sh
cd ../..

echo ""
echo "=== Enabling extensions ==="
gnome-extensions enable dash-to-dock@micxgx.gmail.com || echo "Could not auto-enable dash-to-dock — enable it manually via GNOME Extensions app."
gnome-extensions enable just-perfection-desktop@just-perfection || echo "Could not auto-enable Just Perfection — enable it manually via GNOME Extensions app."
gnome-extensions enable blur-my-shell@aunetx || echo "Could not auto-enable Blur my Shell — enable it manually via GNOME Extensions app."

echo ""
echo "=== Kevo installed ==="
echo "Log out and log back in (or reload GNOME Shell with Alt+F2 > r on X11) to see the changes."
echo "Then apply the WhiteSur theme via GNOME Tweaks (Appearance > Shell/Icons)."
