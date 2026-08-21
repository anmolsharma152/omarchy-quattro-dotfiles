# 🌸 Omarchy Quattro Dotfiles

Personal **Omarchy Quattro** desktop configurations for **Arch Linux**, featuring custom **Hyprland** window rules, Lua bindings, **Aether QuickShell** desktop widgets, dynamic colorways, and GPU-accelerated terminal configurations.

---

## 🎨 Desktop & Tooling Stack

- **OS**: Arch Linux (Linux Zen Kernel)
- **Compositor**: Hyprland (Wayland) with modular Lua configuration architecture
- **Desktop Shell & Widgets**: Omarchy QuickShell & Aether Suite
- **Dynamic Theming**: Hot-reloading theme engine (Catppuccin, Tokyo Night, Gruvbox, Kanagawa, Everforest, etc.)
- **Editor**: Neovim (LazyVim distribution with Omarchy hotreload theme hooks)
- **Terminals**: Ghostty, Kitty, Foot, Alacritty
- **Shell**: Fish with Starship Prompt & Tmux

---

## 📂 Configuration Architecture

```text
~/.config/
├── hypr/               # Modular Hyprland Lua bindings, apps, looknfeel, and window rules
├── omarchy/            # Omarchy shell definitions, theme templates, and extension hooks
├── aether/             # Aether desktop suite and QuickShell settings
├── ghostty/            # Modern GPU-accelerated terminal config
├── kitty/              # Kitty terminal profile & styling
├── foot/               # Ultra-lightweight Wayland terminal config
├── alacritty/          # Alacritty configuration
├── starship.toml       # Custom Starship prompt layout
├── tmux/               # Tmux session management & keybindings
└── nvim/               # LazyVim setup with Omarchy live theme synchronization
```

---

## ⚙️ Daily Management

These dotfiles use a **Bare Git Repository** (`~/.dotfiles/`):

```bash
# Check modified files
dotfiles status

# Review diffs
dotfiles diff

# Stage and commit keybind updates
dotfiles add ~/.config/hypr/
dotfiles commit -m "feat(hypr): customize tiling and workspace shortcuts"
dotfiles push
```
