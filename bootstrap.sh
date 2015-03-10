#!/bin/bash

current_dir=`pwd`

ln -s $current_dir "${ZDOTDIR:-$HOME}"/dotfiles
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/.zprezto "${ZDOTDIR:-$HOME}"/.zprezto

setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -s "${ZDOTDIR:-$HOME}"/dotfiles/.vim "${ZDOTDIR:-$HOME}"/.vim
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/.vimrc "${ZDOTDIR:-$HOME}"/.vimrc

