# Simple makefile to copy dotfiles in place
# Make is actually not that bad once you get used to it's cryptic syntax
#

default: all

VIM := $(HOME)/.vim/
GIT := $(HOME)/.git/
BASH := $(HOME)/.bash 

$(VIM):
	cp -rap dotvim/* $@
	ln -sf $(@)/vimrc $(HOME)/.vimrc

$(GIT):
	cp -rap dotgit/* $@

$(BASH):
	mkdir -p $@
	cp -rap dotbash/* $@
	ln -sf $@/bashrc $(HOME)/.bashrc
	ln -sf $@/bash_profile $(HOME)/.bash_profile

all: $(VIM) $(GIT) $(BASH)
