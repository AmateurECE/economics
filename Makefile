###############################################################################
# NAME:		    Makefile
#
# AUTHOR:	    Ethan D. Twardy <edtwardy@mtu.edu>
#
# DESCRIPTION:	    Makefile for the R package.
#
# CREATED:	    04/08/2019
#
# LAST EDITED:	    04/08/2019
###

ifneq ($(shell uname -s),Darwin)
$(error This Makefile is only valid on Darwin/OS X systems)
endif

all:
	R CMD build . && R CMD install economics*.tar.gz

##############################################################################
