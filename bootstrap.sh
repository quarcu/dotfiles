#!/bin/bash

current_dir=`pwd`

ln -s $current_dir "${ZDOTDIR:-$HOME}"/dotfiles
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/.zprezto "${ZDOTDIR:-$HOME}"/.zprezto

setopt EXTENDED_GLOB

# Linking zpresto and zsh settings
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# list of files/folders to symlink in homedir
files="vimrc vim curlrc screenrc"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s "${ZDOTDIR:-$HOME}"/dotfiles/$file ~/.$file
done
