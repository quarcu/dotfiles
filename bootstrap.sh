#!/bin/bash

ln -s "${ZDOTDIR:-$HOME}"/Projects/dotfiles "${ZDOTDIR:-$HOME}"/dotfiles
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/.zprezto "${ZDOTDIR:-$HOME}"/.zprezto

setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
