#!/bin/bash

# Install non-brew dependencies and link dotfiles to home directory (overrides any existing file in ~)

# get current directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

install_zsh () {
    # Test to see if Zsh is installed
    if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
        # Install Oh My Zsh if it isn't already present
        if [[ ! -d ~/.oh-my-zsh/ ]]; then
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        fi

        # Set the default shell to Zsh if it isn't currently set
        if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
            sudo chsh -s $(which zsh)
        fi
    else
        echo "Zsh not installed, skipping."
    fi
}

# Install oh my zsh (if zsh is installed)
install_zsh

# Specify ZSH custom directory
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Install the ZSH spaceship theme if not already installed
if [[ ! -d $HOME/.oh-my-zsh/custom/themes/spaceship-prompt ]]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi

# Symlink zsh config
ln -sfv "$DOTFILES_DIR/.zshrc" ~
ln -sfv "$DOTFILES_DIR/.zsh_exports" ~
ln -sfv "$DOTFILES_DIR/.zsh_aliases" ~

# Symlink git config
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~
