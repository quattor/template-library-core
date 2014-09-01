# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


################################################################################
# This is 'TPL/config.tpl', a ncm-gmond's file
################################################################################
#
#
################################################################################
unique template components/gmond/config-rpm;
include {'components/gmond/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-gmond", "14.8.0-rc3_SNAPSHOT20140901141109", "noarch");

"/software/components/gmond/dependencies/pre" ?=  list ("spma", "accounts");

"/software/components/gmond/active" ?= true;
"/software/components/gmond/dispatch" ?= true;

