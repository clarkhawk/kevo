# Contributing to Kevo

Thanks for helping build Kevo. This document explains how the project is structured and how to start contributing.

## Project structure

Kevo is not a desktop environment written from scratch — it's an assembly of existing GNOME extensions and themes, forked and configured to work together as one cohesive experience on top of GNOME Shell.

```
kevo/
├── README.md
├── LICENSE
├── setup.sh        # initializes submodules (dev environment)
├── install.sh      # builds and installs everything on your system
└── modules/
    ├── dash-to-dock/          # the dock
    ├── whitesur-gtk-theme/    # GTK/Shell visual theme
    ├── whitesur-icon-theme/   # system icons
    ├── just-perfection/       # top bar and shell tweaks
    └── blur-my-shell/         # blur/translucency effects
```

Each folder under `modules/` is a **Git submodule** — a separate repository with its own history, linked into `kevo`. This matters for two reasons:

1. Each module keeps its own upstream history, so we can pull updates from the original authors later.
2. Each module has its own license (GPL-2.0+ or GPL-3.0 depending on the project) — modifications must respect that license if redistributed.

## Getting started

1. Clone the repo with submodules:
   ```bash
   git clone --recurse-submodules https://github.com/<org-or-user>/kevo.git
   cd kevo
   ```
   If you already cloned without submodules:
   ```bash
   ./setup.sh
   ```

2. Install the required build tools (Fedora):
   ```bash
   sudo dnf install make gettext glib2-devel gnome-tweaks
   ```
   (Debian/Ubuntu equivalents will be documented once Kevo is tested on Debian.)

3. Build and install everything on your machine to see the current state:
   ```bash
   ./install.sh
   ```
   Log out and back in (or reload GNOME Shell with `Alt+F2` → `r` on X11) to see the changes.

## Working on a specific module

Each module in `modules/` is its own Git repo. To work on one:

```bash
cd modules/<module-name>
git checkout -b your-feature-branch
# make your changes
```

After editing a module, reload GNOME Shell to see the effect (X11: `Alt+F2` → `r`; Wayland: log out/in).

## Branching and commits

- Don't push directly to `main`. Create a branch per feature or fix:
  ```bash
  git checkout -b fix/dock-icon-size
  ```
- Write clear, short commit messages describing *what* changed and *why*.
- Open a Pull Request when ready. Someone else should review before merging.

## Where to work depending on what you want to change

| You want to change... | Go to |
|---|---|
| Dock position, size, behavior | `modules/dash-to-dock` |
| Top bar layout, shell tweaks | `modules/just-perfection` |
| Blur/translucency effects | `modules/blur-my-shell` |
| Colors, shapes, overall visual theme | `modules/whitesur-gtk-theme` |
| System icons | `modules/whitesur-icon-theme` |
| Installation flow, submodule setup | `setup.sh`, `install.sh` |

## Questions

If something is unclear or broken, open an issue rather than guessing — it helps everyone track what's in progress.