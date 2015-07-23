#!/usr/bin/env bash

# credit for this script goes to Mathias Bynens
# https://github.com/mathiasbynens/dotfiles

function doIt() {
	rsync \
		--exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "install-dotfiles.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	source ~/.profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
