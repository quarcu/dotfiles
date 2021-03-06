#!/bin/bash
# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap homebrew/completions
brew tap homebrew/versions
brew tap tldr-pages/tldr
brew tap caskroom/versions
brew tap homebrew/dupes

brew install homebrew/dupes/grep
