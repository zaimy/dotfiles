#!/bin/bash

echo "====> Running setup..."
type brew
if [ $? -ne 0 ]; then
  echo "====> Install Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "====> Login App Store..."
open -a App\ Store
echo "Press any keys when the login is complete."
read

echo "====> Install applications with Homebrew..."
brew bundle

echo "====> Install Poetry..."
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

echo "====> Install Logitech Options..."  # TODO: Use Homebrew after cask updating. https://github.com/Homebrew/homebrew-cask-drivers/pull/1581
open https://www.logitech.com/en-us/product/options
echo "Press any keys when the installation is complete."
read

echo "====> Install Snap camera..."
open https://snapcamera.snapchat.com/download/
echo "Press any keys when the installation is complete."
read

echo "====> Setup MacTex..."
exec $SHELL -l
sudo tlmgr update --self --all # Update all packages
sudo tlmgr paper a4
