# Dotfiles Setup with GNU Stow

This repository contains my configuration files for various applications, managed using GNU Stow. It helps me quickly set up my development environment on a new system.


## 🚀 Installation Steps

1. Ensure GNU Stow is installed:
   ```sh
   sudo pacman -S stow   # For Arch-based distros
   ```

2. Clone this repository into your home directory:
   ```sh
   git clone https://github.com/meet-javiya0/dotfiles.git
   cd ~/.dotfiles
   ```

3. Run the setup script to create symlinks:
   ```sh
   ~/setup_dotfiles.sh
   ```

## 🔄 Stowing Individual Configurations
If you want to stow only a specific application’s config, run:
   ```sh
   stow -v -d ~/.dotfiles -t ~/.config/alacritty alacritty  # For Alacritty
   stow -v -d ~/.dotfiles -t ~ tmux                         # For tmux
   stow -v -d ~/.dotfiles -t ~/.config/zed zed              # For Zed editor
   stow -v -d ~/.dotfiles -t ~ zsh                          # For Zsh
   ```

## 🛠️ Unstowing (Removing Symlinks)
If you need to remove the symlinks, use:
   ```sh
   stow -D -v -d ~/.dotfiles -t ~/.config/alacritty alacritty
   stow -D -v -d ~/.dotfiles -t ~ tmux
   stow -D -v -d ~/.dotfiles -t ~/.config/zed zed
   stow -D -v -d ~/.dotfiles -t ~ zsh
   ```

## Notes
- This setup assumes that your dotfiles should be placed in ~ (home directory).
- If any file already exists in your home directory, Stow will not overwrite it. Instead, it will show a conflict error.
- If you face conflicts, rename or remove the existing files manually.

## 🎯 Automating Setup on a New System
To make it easier, run this command from the .dotfiles folder:
   ```sh
   ~/setup_dotfiles.sh
   ```
This script will automatically create all necessary symlinks.
