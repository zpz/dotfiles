# This makefile is outdated.
#
INSTALL = install -bp -m u=rw,g=r,o=r
UNINSTALL = rm -f
SHELL = bash

build:

install:
	$(INSTALL) bash_profile $(HOME)/.bash_profile
	$(INSTALL) bashrc $(HOME)/.bashrc
	$(INSTALL) vimrc $(HOME)/.vimrc
	$(INSTALL) Rprofile $(HOME)/.Rprofile
	source $(HOME)/.bash_profile
	source $(HOME)/.bashrc

clean:

uninstall:
	$(UNINSTALL) $(HOME)/.vimrc
	$(UNINSTALL) $(HOME)/.bashrc
	$(UNINSTALL) $(HOME)/.bash_profile
	$(UNINSTALL) $(HOME)/.Rprofile

