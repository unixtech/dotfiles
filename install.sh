#!/bin/bash

DOTFILESDIRECTORY=$(pwd)
ZSH_PACKAGES_DB="$DOTFILESDIRECTORY/db/zsh_packages.md"

echo "😵 AstroNVIM for our selves 🤨"

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

echo "Installed AstroNVIM for us 😈 "



# mkdir ~/.config

# echo "Creating a symbolic link to the home directory for init.vim and .zshrc"

## Remove any old .vimrc and .zshrc files
rm ~/.zshrc
# rm ~/.tmux.conf
# rm -rf ~/.config/nvim

## Create them again but this time linked to this dotfiles
# ln -s "$DOTFILESDIRECTORY/zsh/.zshrc" ~/.zshrc
ln -sf "$DOTFILESDIRECTORY/git/.gitignore_global" ~/.gitignore_global
ln -sf "$DOTFILESDIRECTORY/git/.gitconfig" ~/.gitconfig
ln -sfn "$DOTFILESDIRECTORY/nvim/user" ~/.config/nvim/lua/user
ln -s "$DOTFILESDIRECTORY/.ackrc" ~/.ackrc
# ln -s "$DOTFILESDIRECTORY/.ideavimrc" ~/.ideavimrc
# ln -s "$DOTFILESDIRECTORY/tmux/.tmux.conf" ~/.tmux.conf

# installPackages() {
# 	while IFS="=" read -r packageName packageGitURL
# 	do
# 		echo "Installing $packageName"
#
# 		git clone "$packageGitURL" "$2/$packageName"
# 	done < $1
# 	unset IFS
# }

# echo "Installing ZSH Packages"
# echo ""
#
# installPackages $ZSH_PACKAGES_DB ~/.zsh
#
# echo ""

exit 0
