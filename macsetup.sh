#!/bin/bash
  
  # Homebrew
  
  if ! which brew > /dev/null; then
    ruby -e \
      "$(curl -Ls 'https://github.com/Homebrew/install/raw/master/install')" \
        < /dev/null > /dev/null 2>&1
  fi
  
  brew analytics off
  brew update
  brew doctor
  
  # Install helper
  
  brew install vitorgalvao/tiny-scripts/cask-repair
  brew install mas
  brew install dockutil
  brew install telnet
  brew install aria2
  brew install wget
  
  # Install Applications
  
  mas_install=(
    '466261145'
    '443987910'
  )
  
  for ((i = 0; i < "${#mas_install[@]}"; i++)); do
    mas install ${mas_install[$i]}
  done
  
  cask_install=(
    'alfred'
    'autodmg'
    'caffeine'
    'charles'
    'chocolat'
    'clipy'
    'coda'
    'coderunner'
    'cyberduck'
    'debookee'
    'dhs'
    'etrecheckpro'
    'firefox'
    'flow'
    'fluid'
    'fsmonitor'
    'github'
    'google-chrome'
    'hancock'
    'hipchat'
    'ipsecuritas'
    'iterm2'
    'jamf-migrator'
    'keka'
    'kerio-connect'
    'knockknock'
    'lingon-x'
    'mactracker'
    'microsoft-office'
    'nextcloud'
    'notion'
    'pacifist'
    'packages'
    'platypus'
    'postman'
    'profilecreator'
    'sequel-pro'
    'signal'
    'slack'
    'sloth'
    'spectacle'
    'spotify'
    'sublime-text'
    'suspicious-package'
    'the-mut'
    'tor-browser'
    'transmission'
    'transmit'
    'viscosity'
    'vlc'
    'whatsapp'
    'qlcolorcode'
    'qlstephen'
    'qlmarkdown'
    'quicklook-json'
    'qlimagesize'
    'webpquicklook'
    'suspicious-package'
    'quicklookase'
    'qlvideo'
  )
  
  for ((i = 0; i < "${#cask_install[@]}"; i++)); do
    brew cask install ${cask_install[$i]}
  done
  
  # Linking binaries