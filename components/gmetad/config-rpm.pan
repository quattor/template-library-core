# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# 

################################################################################
# This is 'TPL/config.tpl', a ncm-gmetad's file
################################################################################
#
#
################################################################################
unique template components/gmetad/config-rpm;
include {'components/gmetad/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-gmetad", "15.4.0-1", "noarch");

"/software/components/gmetad/dependencies/pre" ?=  list ("spma", "accounts");

"/software/components/gmetad/active" ?= true;
"/software/components/gmetad/dispatch" ?= true;

