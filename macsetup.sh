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
  
  # Helper
  
  brew install vitorgalvao/tiny-scripts/cask-repair
  brew install mas
  brew install dockutil
  brew install telnet
  brew install aria2
  brew install wget
  brew install jq
  brew install blueutil
  brew install duti
  
  # Applications
  
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
    'appcleaner'
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
    'jdownloader'
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
  
  # Binaries Linking
  
  ln -s "/Users/admin/GitHub/aky-source/aky.sh" "/usr/local/bin/aky" && chmod +x "/usr/local/bin/aky"
  ln -s "/Users/admin/GitHub/aky-source/rg.sh" "/usr/local/bin/rg" && chmod +x "/usr/local/bin/rg"
  ln -s "/Users/admin/GitHub/aky-source/csc.sh" "/usr/local/bin/csc" && chmod +x "/usr/local/bin/csc"
  
  ln -s "/Users/admin/GitHub/helper/bin/gmcfa" "/usr/local/bin/gmcfa" && chmod +x "/usr/local/bin/gmcfa"
  ln -s "/Users/admin/GitHub/helper/bin/aky-updatecheck" "/usr/local/bin/aky-updatecheck" && chmod +x "/usr/local/bin/aky-updatecheck"
  ln -s "/Users/admin/GitHub/helper/bin/AppStoreXtractor" "/usr/local/bin/AppStoreXtractor" && chmod +x "/usr/local/bin/AppStoreXtractor"
  ln -s "/Users/admin/GitHub/helper/bin/assimilateownership" "/usr/local/bin/assimilateownership" && chmod +x "/usr/local/bin/assimilateownership"
  ln -s "/Users/admin/GitHub/helper/bin/currentuser" "/usr/local/bin/currentuser" && chmod +x "/usr/local/bin/currentuser"
  ln -s "/Users/admin/GitHub/helper/bin/lohelper" "/usr/local/bin/lohelper" && chmod +x "/usr/local/bin/lohelper"
  ln -s "/Users/admin/GitHub/helper/bin/pkgfixer" "/usr/local/bin/pkgfixer" && chmod +x "/usr/local/bin/pkgfixer"
  ln -s "/Users/admin/GitHub/helper/bin/randomizer" "/usr/local/bin/randomizer" && chmod +x "/usr/local/bin/randomizer"
  ln -s "/Users/admin/GitHub/helper/bin/tmpDir" "/usr/local/bin/tmpDir" && chmod +x "/usr/local/bin/tmpDir"