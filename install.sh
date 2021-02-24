#!/usr/bin/env bash

# Install brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install zsh and oh-my-zsh
#brew install zsh
#sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# Note: don’t forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.

# Install oh-my-zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#cd ~/.oh-my-zsh/themes && wget https://raw.github.com/jasonlewis/jcl-zsh-theme/master/jcl.zsh-theme

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install PHP
brew install homebrew/php/php71
brew install homebrew/php/php71-mcrypt
brew install homebrew/php/php71-xdebug

# Install Node
brew install node

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz
brew install go
brew install ngrep
brew install iftop
brew install ipcalc
brew install gettext
brew install gpg
brew install postgresql
brew install gh

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-extras
brew install imagemagick --with-webp
brew install p7zip
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install git-lfs
# brew install lua
# brew install lynx
# brew install pigz
# brew install pv
# brew install rename
brew install tree
# brew install vbindiff
# brew install webkit2png
# brew install zopfli
brew install terraform
brew install htop
brew isntall tree
brew install vault
brew install jq
brew install az
brew install ansible
brew install unrar
brew install bfg
brew install kubernetes-cli
brew install yamllint
brew install mackup
brew install bfg
brew install dos2unix
brew install yarn
brew install mongodb
brew install shellcheck
brew install packer
brew install wireguard-tool
brew install helm
brew install minikube
brew install signal

# Install brew cask and other apps
brew tap phinze/homebrew-cask
brew install --cask alfred
brew install --cask iterm2
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask flux
brew install --cask whatsapp
brew install --cask slack
brew install --cask skype
brew install --cask sequel-pro
brew install --cask rescuetime
brew install --cask sublime-text
brew install --cask atom
brew install --cask virtualbox
brew install --cask docker
brew install --cask 0ad
brew install --cask vagrant
brew install --cask github-desktop
brew install --cask github
brew install --cask appzapper
brew install --cask flycut
brew install --cask keybase
brew install --cask vlc
brew install --cask steam
brew install --cask deckset
brew install --cask java
brew install --cask java8
brew install --cask firefox
brew install --cask discord
brew install --cask google-cloud-sdk
brew install --cask tor-browser
brew install --cask riot
brew install --cask keepassxc
brew install --cask visual-studio-code
brew install --cask finicky

# Add sublime command
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# Vim stuffs
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh

# Remove outdated versions from the cellar.
brew cleanup

# Install composer
curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer

composer global require laravel/valet
composer global require laravel/installer
composer global require phpunit/phpunit
composer global require riendsofphp/php-cs-fixer

#another utils
npm install --global git-open
npm install -g peerflix

#atom packages
apm install language-terraform
apm install language-ansible
apm install language-docker

#go programs
go get -u rsc.io/2fa

~/.composer/vendor/bin/valet install

sh fonts.sh
