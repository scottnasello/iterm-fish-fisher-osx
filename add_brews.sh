# install Mac store items
Brew install mas

# Update homebrew recipes
brew update


PACKAGES=(
    ffmpeg
    git
    tmux
    tree
    wget
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew tap caskroom/cask

CASKS=(
    1password
    dropbox
    Kindle
    google-chrome
    powershell
    #slack
    snagit
    visual-studio-code
    Wickrme
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Configuring OSX..."

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Disable "natural" scroll
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
