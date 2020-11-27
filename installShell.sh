# /bin/bash

clear
pushd ~/git/dotFiles > /dev/null

if [ -n "$(git status --porcelain)" ]; then
    git status
    echo ""
    echo ""
    echo "---------------------------------------------------------------------"
    echo "You can run these commands to push changes:"
    echo "  pushd ~/git/dotFiles && gc 'minor tweaks' && git push && popd"
    echo ""
    read -p "Make sure there are no outstanding commits in ~/git/dotFiles and press ENTER..."
else
  echo "No git changes detected in ~/git/dotFiles...";
fi


echo Installing my personal bin folder
./installbins.sh

echo Loading .bash_profile
cp .bash_profile ~

echo Loading .aliases
cp .aliases ~

echo Refreshing .bash_profile
source ~/.bash_profile

echo You must run the following command to get all the latest shell features
echo "  reload"
echo ""


popd > /dev/null