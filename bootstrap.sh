#!/bin/bash

# -------------------- Base install -----------------------
# making sure Homebrew package manager is installed
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install python3

# -------------------- Libraries install -----------------------
# pip3
sudo pip3 install requests
pip3 install requests --user

# beautifulsoup4
sudo pip3 install beautifulsoup4
pip3 install beautifulsoup4 --user