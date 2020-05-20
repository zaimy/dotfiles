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
