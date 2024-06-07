#!/bin/bash

# Function to check if a command exists
command_exists() {
  command -v "$1" &> /dev/null
}

# Function to install Homebrew (macOS only)
install_homebrew() {
  if command_exists brew; then
    echo "Homebrew is already installed."
  else
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
}

install_homebrew
