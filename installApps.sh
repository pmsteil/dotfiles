echo Installing XCode dev tools
#install Apple Command Line tools
xcode-select --install
#./dotfiles/brew.sh
#./dotfiles/git-packages.sh
#./dotfiles/macos-applications.sh

echo Installing all Brew packages
./brew.sh
