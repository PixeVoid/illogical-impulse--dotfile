#!/bin/bash

echo "╭─────────────────────────────────╮"
echo "│     Ankit's App Installer       │"
echo "╰─────────────────────────────────╯"

install() {
    for pkg in "$@"; do
        if pacman -Qi "$pkg" &>/dev/null; then
            echo "⏭ Skipping $pkg (already installed)"
        else
            yay -S --noconfirm "$pkg"
        fi
    done
}

install \
    google-chrome \
    brave-bin \
    ferdium-bin \
    spotify \
    vlc \
    visual-studio-code-bin \
    neovim \
    micro \
    git \
    github-cli \
    bluej \
    blender \
    libreoffice-fresh \
    rofi \
    asusctl \
    rog-control-center \
    supergfxctl \
    nvidia-open-dkms \
    nvidia-prime \
    libva-nvidia-driver \
    bluez \
    bluez-utils \
    power-profiles-daemon \
    pipewire \
    pipewire-alsa \
    pipewire-jack \
    sbctl \
	tmux \
    gedit \
    onlyoffice-bin \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji \
    noto-fonts-extra

echo "✅ Done!"
