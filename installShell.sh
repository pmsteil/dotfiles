# /bin/bash

clear
pushd ~/git/dotFiles > /dev/null

git status

echo ""
echo ""
echo "---------------------------------------------------------------------"
read -p "Make sure there are no outstanding commits and press ENTER..."

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