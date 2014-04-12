#!/bin/sh

folder_name=`env LC_CTYPE=C tr -dc "a-z0-9" < /dev/urandom | head -c 6`
git clone git@github.com:josephj/tinder.git /tmp/$folder_name
cd "/tmp/$folder_name"
rm -rf '.git'
mkdir app/components
bower install
npm install . -g
cd -
rm -rf "/tmp/$folder_name"

echo "\ntinder has been installed. Please execute the following command."
echo "tinder new <project_name>"

