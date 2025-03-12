#!/bin/bash

# Set the base directory for dotfiles
DOTFILES_DIR="$HOME/.dotfiles"

echo "Stowing dotfiles from $DOTFILES_DIR..."

# Stow configs to their appropriate locations
stow -v -d "$DOTFILES_DIR" -t ~/.config/alacritty alacritty
stow -v -d "$DOTFILES_DIR" -t ~ tmux
stow -v -d "$DOTFILES_DIR" -t ~/.config/zed zed
stow -v -d "$DOTFILES_DIR" -t ~ zsh

echo "Dotfiles have been successfully linked!"
