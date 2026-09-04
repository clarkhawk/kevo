<div align="center">

# Kevo

**A refined, macOS-inspired desktop environment built on GNOME.**

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](./LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/clarkhawk/kevo?style=flat)](https://github.com/clarkhawk/kevo/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/clarkhawk/kevo)](https://github.com/clarkhawk/kevo/issues)

</div>

---

## About

Kevo is a desktop environment built on top of GNOME Shell, focused on a clean, cohesive visual experience — a persistent dock, a global top bar, and a unified theme — without sacrificing the stability and lightness needed for everyday use.

It's designed to run well on GNOME-based Linux systems, with a focus on being approachable for students, developers, and professionals alike.

## Features

- Persistent, customizable dock (built on dash-to-dock)
- macOS-inspired top bar and shell tweaks (built on Just Perfection)
- Unified visual theme across shell and apps (built on WhiteSur)
- Optional blur/translucency effects (built on Blur my Shell)
- Lightweight, tuned for modest hardware

## Getting the code

This repository uses Git submodules to include its core components. Clone it with:

```bash
git clone --recurse-submodules https://github.com/clarkhawk/kevo.git
```

If you already cloned without `--recurse-submodules`, run:

```bash
git submodule update --init --recursive
```

Or simply use the setup script:

```bash
./setup.sh
```

## Installation

> Coming soon — Kevo is in early development.

## Built on

Kevo builds on and modifies the following open-source projects, included as submodules under `modules/`:

| Project | Role | License |
|---|---|---|
| [dash-to-dock](https://github.com/micheleg/dash-to-dock) | Dock | GPL-2.0+ |
| [WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme) | GTK/Shell theme | GPL-3.0 |
| [WhiteSur-icon-theme](https://github.com/vinceliuice/WhiteSur-icon-theme) | Icon theme | GPL-3.0 |
| [Just Perfection](https://gitlab.gnome.org/jrahmatzadeh/just-perfection) | Shell customization | GPL-3.0 |
| [Blur my Shell](https://github.com/aunetx/blur-my-shell) | Blur effects | GPL-3.0 |

## Contributing

Contributions are welcome. Feel free to open an issue or submit a pull request.

## License

Kevo is licensed under the [GNU General Public License v3.0](./LICENSE).
