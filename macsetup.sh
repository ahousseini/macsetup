#!/bin/bash
  
  # Homebrew
  
  if ! which brew > /dev/null; then
    ruby -e "$(curl -Ls 'https://github.com/Homebrew/install/raw/master/install')" < /dev/null > /dev/null 2>&1
  fi
  
  brew analytics off
  brew update
  brew doctor
  
  brew tap caskroom/cask
  brew tap caskroom/fonts
  brew tap caskroom/versions
  brew tap homebrew/command-not-found
  brew tap homebrew/services
  brew tap homebrew/cask-eid
  brew tap jamf/tap
  
  # Homebrew
  
  formulae_install=(
    'vitorgalvao/tiny-scripts/cask-repair'
    'mas'
    'dockutil'
    'telnet'
    'aria2'
    'wget'
    'jq'
    'blueutil'
    'duti'
    'ncdu'
    'xmlstarlet'
    'shc'
    'kubectl'
    'trash'
  )
  
  for ((i = 0; i < "${#formulae_install[@]}"; i++)); do
    brew install ${formulae_install[$i]}
  done
  
  # Applications
  
  mas_install=(
    '466261145'  # Remotix VNC, RDP & NEAR
    '443987910'  # 1Password 6
    '409201541'  # Pages
    '409907375'  # Apple Remote Desktop
    '1037126344' # Apple Configurator 2
    '497799835'  # Xcode
    '689859502'  # Push Diagnostics
    '897243628'  # IPv4 Subnet
  )
  
  for ((i = 0; i < "${#mas_install[@]}"; i++)); do
    mas install ${mas_install[$i]}
  done
  
  sudo xcodebuild -license accept
  
  cask_install=(
    'anydesk'
    'alfred'
    'autodmg'
    'appcleaner'
    'blockblock'
    'caffeine'
    'carbon-copy-cloner'
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
    'sus-inspector'
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
    brew cask install --no-quarantine ${cask_install[$i]}
  done
  
  # Install autopkg and add basic repos
  
  autopkg_version="1.0.4"
  
  cd "/private/tmp/" && curl -s -O -J -L "https://github.com/autopkg/autopkg/releases/download/v${autopkg_version}/autopkg-${autopkg_version}.pkg"
  
  /usr/sbin/installer -pkg "/private/tmp/autopkg-${autopkg_version}.pkg" -target /
  rm -rf "/private/tmp/autopkg-${autopkg_version}.pkg"
  
  autopkg_repo=(
    "dataJAR-recipes"
    "prochat-recipes"
  )
  
  for ((i = 0; i < "${#autopkg_repo[@]}"; i++)); do
    autopkg repo-add ${autopkg_repo[$i]}
  done
  
  # Binaries Linking
  
  chmod +x "/Users/admin/GitHub/aky-source/aky.sh" && ln -s "/Users/admin/GitHub/aky-source/aky.sh" "/usr/local/bin/aky"
  chmod +x "/Users/admin/GitHub/aky-source/rg/rg.sh" && ln -s "/Users/admin/GitHub/aky-source/rg/rg.sh" "/usr/local/bin/rg"
  chmod +x "/Users/admin/GitHub/aky-source/csc/csc.sh" && ln -s "/Users/admin/GitHub/aky-source/csc/csc.sh" "/usr/local/bin/csc"
  chmod +x "/Users/admin/GitHub/helper/bin/gmcfa" && ln -s "/Users/admin/GitHub/helper/bin/gmcfa" "/usr/local/bin/gmcfa"
  chmod +x "/Users/admin/GitHub/helper/bin/appcast-checkpoint" && ln -s "/Users/admin/GitHub/helper/bin/appcast-checkpoint" "/usr/local/bin/appcast-checkpoint"
  chmod +x "/Users/admin/GitHub/helper/bin/aky-updatecheck" && ln -s "/Users/admin/GitHub/helper/bin/aky-updatecheck" "/usr/local/bin/aky-updatecheck"
  chmod +x "/Users/admin/GitHub/helper/bin/AppStoreXtractor" && ln -s "/Users/admin/GitHub/helper/bin/AppStoreXtractor" "/usr/local/bin/AppStoreXtractor"
  chmod +x "/Users/admin/GitHub/helper/bin/assimilateownership" && ln -s "/Users/admin/GitHub/helper/bin/assimilateownership" "/usr/local/bin/assimilateownership"
  chmod +x "/Users/admin/GitHub/helper/bin/currentuser" && ln -s "/Users/admin/GitHub/helper/bin/currentuser" "/usr/local/bin/currentuser"
  chmod +x "/Users/admin/GitHub/helper/bin/lohelper" && ln -s "/Users/admin/GitHub/helper/bin/lohelper" "/usr/local/bin/lohelper"
  chmod +x "/Users/admin/GitHub/helper/bin/pkgfixer" && ln -s "/Users/admin/GitHub/helper/bin/pkgfixer" "/usr/local/bin/pkgfixer"
  chmod +x "/Users/admin/GitHub/helper/bin/randomizer" && ln -s "/Users/admin/GitHub/helper/bin/randomizer" "/usr/local/bin/randomizer"
  chmod +x "/Users/admin/GitHub/helper/bin/tmpDir" && ln -s "/Users/admin/GitHub/helper/bin/tmpDir" "/usr/local/bin/tmpDir"
  chmod +x "/Users/admin/GitHub/helper/bin/jamff" && ln -s "/Users/admin/GitHub/helper/bin/jamff" "/usr/local/bin/jamff"
  chmod +x "/Users/admin/GitHub/helper/bin/write-out-curl" && ln -s "/Users/admin/GitHub/helper/bin/write-out-curl" "/usr/local/bin/write-out-curl"
  
  # git
  
  git config --global core.excludesfile ~/.gitignore
  echo ".DS_Store" >> ~/.gitignore
  
  # Finder
  
  defaults write com.apple.finder "_FXShowPosixPathInTitle" -bool true
  defaults write com.apple.finder "NewWindowTarget" -string PfHm
  defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool true
  defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool true
  defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool true
  defaults write com.apple.finder "ShowStatusBar" -bool true
  defaults write com.apple.finder "ShowPathbar" -bool true
  defaults write com.apple.finder "SidebarDevicesSectionDisclosedState" -bool true
  defaults write com.apple.finder "SidebarPlacesSectionDisclosedState" -bool true
  defaults write com.apple.finder "SidebarSharedSectionDisclosedState" -bool true
  defaults write com.apple.finder "ShowRecentTags" -bool false
  defaults write com.apple.finder "ShowPreviewPane" -bool false
  defaults write com.apple.finder "FXPreferredSearchViewStyle" -string clmv
  defaults write com.apple.finder "FXPreferredViewStyle" -string clmv
  defaults write com.apple.finder "SearchRecentsSavedViewStyle" -string clmv
  
  osascript -e 'tell app "Finder" to quit'
  
  # Dock
  
  defaults write com.apple.dock orientation -string left
  defaults write com.apple.dock show-recents -bool false
  
  dockutil --remove "all"
  
  dock_items=(
    'Self Service Icon Maker.app'
    'Microsoft Excel.app'
    'Microsoft Word.app'
    'Calendar.app'
    'Utilities/Terminal.app'
    'Pacifist.app'
    'Suspicious Package.app'
    'Packages.app'
    'Platypus.app'
    'Debookee.app'
    'Remotix.app'
    'Remote Desktop.app'
    'GitHub Desktop.app'
    'jamf-migrator.app'
    'The MUT.app'
    'Chocolat.app'
    'Coda 2.app'
    'Sublime Text.app'
    'Preview.app'
    '1Password.app'
    'Transmit.app'
    'Viscosity.app'
    'Mail.app'
    'HelpDesk.app'
    'mite.app'
    'Notion.app'
    'Flow.app'
    'Slack.app'
    'Messages.app'
    'Signal.app'
    'WhatsApp.app'
    'Spotify.app'
    'Tor Browser.app'
    'Google Chrome.app'
    'Firefox.app'
    'Safari.app'
    'System Preferences.app'
  )
  
  for ((i = 0; i < "${#dock_items[@]}"; i++)); do
    dockutil --add "/Applications/${dock_items[$i]}" --no-restart
  done
  
  osascript -e 'tell app "Dock" to quit'
  
  # Enable CUPS web interface
  
  cupsctl WebInterface=yes
  
  # Finder Sidebar
  
  sidebar_items=(
    '/Users/admin/WebOffice'
    '/Users/admin/GitHub'
  )
  
  for ((i = 0; i < "${#sidebar_items[@]}"; i++)); do
    /usr/bin/sfltool add-item com.apple.LSSharedFileList.FavoriteItems file://${sidebar_items[$i]}
  done
  
  # Set UTI default handler
  
  duti -s "com.chocolatapp.Chocolat" sh all
  