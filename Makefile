# Simple makefile to copy dotfiles in place
# Make is actually not that bad once you get used to it's cryptic syntax
#

default: all

VIM := $(HOME)/.vim/
GIT := $(HOME)/.git/
BASH := $(HOME)/.bash 

$(VIM):
	mkdir $@
$(VIM)/autoload:
	cp -rap dotvim/autoload $@
$(VIM)/vimrc:
	cp dotvim/vimrc $@
	ln -sf $(@)/vimrc $(HOME)/.vimrc

$(VIM)/update_bundles.rb: $(VIM) $(VIM)/autoload $(VIM)/vimrc dotvim/update_bundles.rb
	cp dotvim/update_bundles.rb $@
	$@

$(GIT):
	mkdir $@
	cp -rap dotgit/* $@

$(BASH):
	mkdir -p $@
	cp -rap dotbash/* $@
	ln -sf $@/bashrc $(HOME)/.bashrc
	ln -sf $@/bash_profile $(HOME)/.bash_profile

all: $(GIT) $(BASH) $(VIM)/update_bundles.rb

# vi: noexpandtab ts=4 sw=4 ai
