#!/bin/bash

current_dir=`pwd`
ln -s $current_dir ~/dotfiles

setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/dotfiles/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
