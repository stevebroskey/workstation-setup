# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

##brew cask install flycut ##Do we even do this? (TODO)
brew cask install shiftit
echo
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
echo
##brew cask install dash ##Do we even use this? (TODO)
brew cask install postman
##brew cask install quicklook-json ##Do we use this? (TODO)

# Terminals

brew cask install iterm2

# Browsers

brew cask install google-chrome
brew cask install firefox

# Communication

#TODO: "Officially", we don't need slack (make optional param?)
#brew cask install slack

# Text Editors

brew cask install macdown
brew cask install sublime-text
##brew cask install textmate
brew cask install macvim
brew cask install jetbrains-toolbox --force # guard against pre-installed jetbrains-toolbox
##brew cask install visual-studio-code ##Pretty sure we don't even use VSC (TODO)
##brew cask install atom ##Don't think we use this (TODO)
set -e
