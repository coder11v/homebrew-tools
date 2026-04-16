#!/bin/bash

echo "--- imcli dependencies installer ---"

# Check for Homebrew
if ! command -v brew &> /dev/null; then
    echo ">> Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH for the rest of the script (depends on OS/arch)
    if [[ -x "/opt/homebrew/bin/brew" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -x "/usr/local/bin/brew" ]]; then
        eval "$(/usr/local/bin/brew shellenv)"
    fi
else
    echo ">> Homebrew is already installed."
fi

# Install Gum
if ! command -v gum &> /dev/null; then
    echo ">> Installing gum via Homebrew..."
    brew install gum
else
    echo ">> 'gum' is already installed."
fi

echo ">> Installation complete! You can now use imcli."
