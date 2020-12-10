SECONDS=0


######################################################################
# modify these vars for each push
######################################################################

version=1.0.0
commitmsg="First tag and adding owasp-zap, sublime-text, speedtest-cli, amethyst"



######################################################################
# set variables for sync to  github repo
######################################################################







modulename=dotfiles
branchname=$modulename-$version


######################################################################
# begin script
######################################################################

clear
echo
echo About to tag [$modulename] with version [$version - $commitmsg] 
echo and then collect any config files/data
echo and then push to github
echo
echo Press the 'any' key to continue...
read

#get any data we might need... 
mkdir -p data/amethyst
cp ~/Library/Preferences/com.amethyst.Amethyst.plist data/amethyst
git add data
git status

read -p "press enter to continue... "


git commit -am "$version - $commitmsg"
git tag $version && git push origin --tags
git push


