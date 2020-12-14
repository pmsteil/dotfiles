#!/usr/bin/env bash




#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update


brew install cask
brew install coreutils
timeout=gtimeout

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

read -p "Press enter to install brew apps..."


#ability to move files to the Trash rather than rm which deletes immediately
brew install trash

#window manager
brew cask install rectangle


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
#ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
#brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
#brew install gnupg

# Install more recent versions of some macOS tools.
#brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

//php packages
      brew install php@7.3

      # Download the switcher script to the proper destination
      curl -L https://gist.githubusercontent.com/rhukster/f4c04f1bf59e0b74e335ee5d186a98e2/raw > /usr/local/bin/sphp

      # Make the switcher script writeable
      chmod +x /usr/local/bin/sphp

brew install gmp
brew cask install github

open github

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xz

# Install other useful binaries.
#brew install ack
#brew install exiv2
brew install git
#brew install git-lfs
#brew install gs
brew install imagemagick --with-webp
#brew install lua
#brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install rlwrap
#brew install ssh-copy-id
brew install tree
#brew install vbindiff
#brew install zopfli


brew cask install google-chrome && open "/Applications/Google Chrome.app"

brew install composer

#install kitematic (docker tool)
brew cask install kitematic && open "/Applications/Kitematic.app"

#install vs code
brew cask install visual-studio-code

#insomnia rest api debugger
brew cask install insomnia

#install 1password
brew cask install 1password && open "/Applications/1Password 7.app"

brew cask install appcleaner && open "/Applications/AppCleaner.app"

brew cask install skype && open "/Applications/Skype.app"

brew cask install teamviewer  && open "/Applications/TeamViewer.app"

#requires annual license key
#brew cask install screaming-frog-seo-spider


#blackfire.io
brew tap blackfireio/homebrew-blackfire
brew install blackfire-agent

#aws cli
brew install awscli

brew install nginx
brew install mariadb
# brew services start mariadb


#load testing tools
brew install k6
npm install --global har-to-k6
npm install -g jshint

#load/security testing tool
brew cask install owasp-zap



#optionals - prompt to install these:

#install sublime if still working with devendra :)
brew cask install sublime-text && open "/Applications/Sublime Text.app"
# brew cask install brewservicesmenubar && open "/Applications/BrewServicesMenubar.app"
# brew cask install upwork && open "/Applications/Upwork.app"
# brew install regina-rexx


brew install speedtest-cli
alias speedtest="speedtest-cli "

# the amazing window manager!
brew cask install amethyst

# copy in saved off amethyst config files
cp data/amethyst ~/Library/Preferences/com.amethyst.Amethyst.plist 


# Remove outdated versions from the cellar.
brew cleanup


echo ""
echo ""
echo ""
echo ""
echo ""
echo Now, configure the Sync Settings in VS Code to get all your settings blackfireio
