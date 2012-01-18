# Simple makefile to copy dotfiles in place
# Make is actually not that bad once you get used to it's cryptic syntax
#

default: all

VIM := $(HOME)/.vim
GIT := $(HOME)/.git
BASH := $(HOME)/.bash 
VIMSRC := dotvim

$(VIM):
	mkdir $@
$(VIM)/autoload/pathogen.vim: $(VIMSRC)/autoload/pathogen.vim
	-@mkdir $(dir $@)
	cp $< $@

$(VIM)/vimrc: $(VIMSRC)/vimrc
	cp $< $@
	ln -sf $@ $(HOME)/.vimrc

$(VIM)/update_bundles.rb: $(VIM) $(VIM)/autoload/pathogen.vim $(VIM)/vimrc $(VIMSRC)/update_bundles.rb
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

all: $(VIM)/update_bundles.rb

# vi: noexpandtab ts=4 sw=4 ai
