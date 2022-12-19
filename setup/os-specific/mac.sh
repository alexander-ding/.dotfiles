#!/usr/bin/env bash
printf "\nExecuting macOS-specific setups\n"
echo "- setting sensible defaults"

# credit: most of this comes from https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# set Help Viewer windows to non-floating mode
defaults write com.apple.helpviewer DevMode -bool true

# disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# set language and text formats
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# enable lid wakeup
sudo pmset -a lidwake 1

# restart automatically on power loss (and regaining power)
sudo pmset -a autorestart 1

# disable machine sleep while charging
sudo pmset -c sleep 0

# sleep the display after 15 minutes while charging
sudo pmset -c displaysleep 15

# set machine sleep to 10 minutes on battery
sudo pmset -b sleep 10

# sleep the display after 10 minutes on battery
sudo pmset -b displaysleep 10

# set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# set Desktop as the default location for new Finder windows
# for other paths, use `PfLo` and `file:///full/path/here/`
# defaults write com.apple.finder NewWindowTarget -string "PfDe"
# defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# when performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# don't auto-hide the Dock
defaults write com.apple.dock autohide -bool false

# disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false
