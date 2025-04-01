#!/bin/zsh
# Step 1: Reorganize the dotfiles structure for stow

# Polybar:
mkdir -p ~/dotfiles/polybar/.config
mv ~/dotfiles/.config/polybar ~/dotfiles/polybar/.config/

# Rofi:
mkdir -p ~/dotfiles/rofi/.config
mv ~/dotfiles/.config/rofi ~/dotfiles/rofi/.config/

# Kitty:
mkdir -p ~/dotfiles/kitty/.config
mv ~/dotfiles/.config/kitty ~/dotfiles/kitty/.config/

# Nvim:
mkdir -p ~/dotfiles/nvim/.config
mv ~/dotfiles/.config/nvim ~/dotfiles/nvim/.config/

# i3:
mkdir -p ~/dotfiles/i3/.config
mv ~/dotfiles/.config/i3 ~/dotfiles/i3/.config/

# Picom:
mkdir -p ~/dotfiles/picom/.config
mv ~/dotfiles/.config/picom ~/dotfiles/picom/.config/

# Starship (starship.toml is a file):
mkdir -p ~/dotfiles/starship/.config
mv ~/dotfiles/.config/starship.toml ~/dotfiles/starship/.config/starship.toml

# Remove the empty .config folder if it exists
rmdir ~/dotfiles/.config 2>/dev/null

# Step 2: Use stow to create symlinks in your home directory
cd ~/dotfiles

stow -t ~ polybar
stow -t ~ rofi
stow -t ~ kitty
stow -t ~ nvim
stow -t ~ i3
stow -t ~ picom
stow -t ~ starship

# Step 3: Verify the symlinks (optional)
ls -l ~/.config/polybar
ls -l ~/.config/rofi
ls -l ~/.config/kitty
ls -l ~/.config/nvim
ls -l ~/.config/i3
ls -l ~/.config/picom
ls -l ~/.config/starship.toml

# Step 4: Initialize a Git repository, commit, and push to GitHub
cd ~/dotfiles
git init
git add .
git commit -m "Initial commit of dotfiles organized with stow"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main

