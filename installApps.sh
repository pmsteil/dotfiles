echo Installing XCode dev tools
xcode-select --install
#./dotfiles/git-packages.sh

echo Installing all Brew packages
./brew.sh

echo Installing other Mac Apps 
./installMacOSApplications.sh

echo Installing other Mac OS Tweaks
./installMacOSDefaults.sh
