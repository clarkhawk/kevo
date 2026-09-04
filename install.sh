#!/bin/bash
set -e

# install.sh
# Installs Kevo on the current system: builds and enables each
# extension module, then applies the WhiteSur theme.
# Requires setup.sh to have been run first (submodules present).

echo "=== Installing Kevo ==="
echo ""

if [ ! -f modules/dash-to-dock/metadata.json.in ] && [ ! -d modules/dash-to-dock ]; then
    echo "Submodules not found. Run ./setup.sh first."
    exit 1
fi

echo "Step 1/4 — Installing dash-to-dock..."
cd modules/dash-to-dock
make install
cd ../..

echo "Step 2/4 — Installing Just Perfection..."
cd modules/just-perfection
./scripts/build.sh -i
cd ../..

echo "Step 3/4 — Installing Blur my Shell..."
cd modules/blur-my-shell
make install
cd ../..

echo "Step 4/4 — Installing WhiteSur theme (GTK + icons)..."
cd modules/whitesur-gtk-theme
./install.sh
cd ../..

cd modules/whitesur-icon-theme
./install.sh
cd ../..

echo ""
echo "=== Enabling extensions ==="
gnome-extensions enable dash-to-dock@micxgx.gmail.com \
    || echo "Could not auto-enable dash-to-dock — enable it manually via the Extensions app."
gnome-extensions enable just-perfection-desktop@just-perfection \
    || echo "Could not auto-enable Just Perfection — enable it manually via the Extensions app."
gnome-extensions enable blur-my-shell@aunetx \
    || echo "Could not auto-enable Blur my Shell — enable it manually via the Extensions app."

echo ""
echo "=== Kevo installed ==="
echo "Log out and back in (or reload GNOME Shell with Alt+F2 > r on X11) to see the changes."
echo "Then apply the WhiteSur theme via GNOME Tweaks (Appearance > Shell/Icons)."