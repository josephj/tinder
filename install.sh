#!/bin/sh

die() {
  warn "$1"
  exit 1
}

folder_name=`env LC_CTYPE=C tr -dc "a-z0-9" < /dev/urandom | head -c 6`
git clone git@github.com:josephj/tinder.git $folder_name
cd "$folder_name"
rm -rf .git
git init .
git ci -am "Initial commit"

echo "\nYour tinder is ready! Please make fire by following commands:\n"
echo "cd $folder_name; npm start\n"

