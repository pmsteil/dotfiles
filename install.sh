# install.sh

#mkdir -p ~/bin && cp bin/* ~/bin

#install Apple Command Line tools
xcode-select --install

echo Installing all packages via Brew first
./brew.sh

echo Copying .bash_profile
cp .bash_profile ~

echo Copying .aliases
cp .aliases ~

echo Refreshing .bash_profile
source ~/.bash_profile

echo Install Complete
echo Run 'source ~/.bash_profile' in any other terminal window to enable configuration



#./dotfiles/aliases.sh
#./dotfiles/macos-defaults.sh
#./dotfiles/brew.sh
#./dotfiles/git-packages.sh
#./dotfiles/macos-applications.sh
