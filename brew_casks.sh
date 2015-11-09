#!/bin/bash
# Apps
apps=(
  alfred
  android-studio
  anki
  asepsis
  bartender
  bettertouchtool
  betterzipql
  caffeine
  calibre
  carbon-copy-cloner
  ccleaner
  chitchat
  disk-inventory-x
  dockertoolbox
  dropbox
  evernote
  firefox
  flux
  geektool
  goofy
  google-chrome
  istat-menus
  iterm2
  java
  jitsi
  karabiner
  macpass
  mou
  nosleep
  qlcolorcode
  qlimagesize
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-csv
  quicklook-json
  skype
  slack
  smcfancontrol
  sourcetree
  spectacle
  sublime-text3
  suspicious-package
  the-unarchiver
  transmission
  tunnelblick
  vagrant
  vagrant-manager
  virtualbox
  virtualbox-extension-pack
  vlc
  waterfox
  webpquicklook
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install ${apps[@]}
