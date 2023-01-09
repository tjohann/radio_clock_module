#
# my simple makefile act as something like a user interface
#

MODULES = pics Documentation schematics
MODULES_BUILD = src
MODULES_EXTRA = 

all::
	@echo "+-----------------------------------------------------------+"
	@echo "|                                                           |"
	@echo "|                  Nothing to build                         |"
	@echo "|                                                           |"
	@echo "+-----------------------------------------------------------+"
	@echo "| Example:                                                  |"
	@echo "| make build              -> build all code subfolders      |"
	@echo "| make clean              -> clean all dir/subdirs          |"
	@echo "| make distclean          -> clean + kernel folder          |"
	@echo "+-----------------------------------------------------------+"

clean::
	rm -f *~ .*~
	for dir in $(MODULES); do (cd $$dir && $(MAKE) $@); done
	for dir in $(MODULES_BUILD); do (cd $$dir && $(MAKE) $@); done

distclean: clean
	for dir in $(MODULES_EXTRA); do (cd $$dir && $(MAKE) $@); done


#
# to make things easier
#
update: clean
	(git pull)

lazy: update build

#
# build code subfolders
#
build::
	@echo "+----------------------------------------------------------+"
	@echo "|                                                          |"
	@echo "|              Build all code subfolder                    |"
	@echo "|                                                          |"
	@echo "+----------------------------------------------------------+"
	for dir in $(MODULES_BUILD); do (cd $$dir && $(MAKE)); done
