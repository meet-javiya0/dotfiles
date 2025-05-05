#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"

echo "Stowing dotfiles from $DOTFILES_DIR..."

# Make sure target folders exist
mkdir -p ~/.config/alacritty ~/.config/zed

# Stow configs
stow -v -d "$DOTFILES_DIR" -t ~/.config/alacritty alacritty
stow -v -d "$DOTFILES_DIR" -t ~ tmux
stow -v -d "$DOTFILES_DIR" -t ~/.config/zed zed
stow -v -d "$DOTFILES_DIR" -t ~ zsh

echo "Dotfiles have been successfully linked!"
