#!/bin/bash

# Install Homebrew

if ! which brew >/dev/null; then
  ruby -e "$(curl -Ls 'https://github.com/Homebrew/install/raw/master/install')" </dev/null >/dev/null 2>&1
fi

brew analytics off
brew update
brew doctor

# Install software with Homebrew Bundle

brew bundle

# Agree Xcode license

if /usr/bin/xcrun clang 2>&1 | grep "$Q" license; then
  sudo xcodebuild -license
fi

# Link binaries

chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/aky-source/aky.sh" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/aky-source/aky.sh" "/usr/local/bin/aky"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/aky-source/rg/rg.sh" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/aky-source/rg/rg.sh" "/usr/local/bin/rg"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/aky-source/csc/csc.sh" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/aky-source/csc/csc.sh" "/usr/local/bin/csc"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/gmcfa" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/gmcfa" "/usr/local/bin/gmcfa"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/appcast-checkpoint" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/appcast-checkpoint" "/usr/local/bin/appcast-checkpoint"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/aky-updatecheck" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/aky-updatecheck" "/usr/local/bin/aky-updatecheck"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/AppStoreXtractor" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/AppStoreXtractor" "/usr/local/bin/AppStoreXtractor"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/assimilateownership" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/assimilateownership" "/usr/local/bin/assimilateownership"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/currentuser" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/currentuser" "/usr/local/bin/currentuser"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/lohelper" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/lohelper" "/usr/local/bin/lohelper"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/pkgfixer" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/pkgfixer" "/usr/local/bin/pkgfixer"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/randomizer" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/randomizer" "/usr/local/bin/randomizer"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/tmpDir" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/tmpDir" "/usr/local/bin/tmpDir"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/write-out-curl" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/write-out-curl" "/usr/local/bin/write-out-curl"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/appstorelookup" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/helper/bin/appstorelookup" "/usr/local/bin/appstorelookup"
chmod +x "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/james/bin/james" && ln -s "/Users/$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')/GitHub/james/bin/james" "/usr/local/bin/james"

# Configure gitignore

git config --global core.excludesfile ~/.gitignore
echo ".DS_Store" >>~/.gitignore

# Configure Finder

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

sleep 5

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
  'BBEdit.app'
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

mysides add admin file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/
mysides add Desktop file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Desktop/
mysides add Downloads file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Downloads/
mysides add Applications file:///Applications/
mysides add GitHub file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/
mysides add jamfpro-kubernetes file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/jamfpro-kubernetes/
mysides add james file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/james/
mysides add templates file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/james/templates/
mysides add manifests file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/james/manifests/
mysides add icons file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/james/icons/
mysides add aky file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/aky/
mysides add aky-versions file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/aky-versions/
mysides add aky-source file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/aky-source/
mysides add aky-static file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/aky-static/
mysides add preferences file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/preferences/
mysides add jsssr file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/jsssr/
mysides add helper file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/GitHub/helper/
mysides add Cloud file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Cloud/
mysides add Dokumente file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Cloud/Dokumente/
mysides add Jamf file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Cloud/Jamf/
mysides add Dev file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Cloud/Dev/
mysides add WebOffice file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/WebOffice/
mysides add Kunden-premium file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/WebOffice/Kunden-premium/
mysides add Kunden-uebrige file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/WebOffice/Kunden-uebrige/
mysides add Kunden Premium Basel file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/WebOffice/Kunden%20Premium%20Basel/
mysides add Kunden Mittelland file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/WebOffice/Kunden%20Mittelland/
mysides add JSS file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/WebOffice/WebOffice/JSS/
mysides add Icon file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/WebOffice/WebOffice/JSS/Icon/
mysides add AutoPkg file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Library/AutoPkg/
mysides add Packages file:///Users/"$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')"/Packages/
mysides add tmp file:///private/tmp/
