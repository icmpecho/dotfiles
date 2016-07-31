#!/bin/sh
STATUS=0
echo "Checking if NVM is installed..."
if [ ! -d ~/.nvm ]; then
  echo "NVM does not exists, Installing NVM..."
  git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
  STATUS=$?
fi
echo "NVM is installed."
exit $STATUS
