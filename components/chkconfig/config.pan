# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# 
# #
# chkconfig, 17.8.0, 1, Mon Oct 23 2017
#

unique template components/chkconfig/config;

include 'components/chkconfig/schema';

bind "/software/components/chkconfig" = component_chkconfig_type;

# Set prefix to root of component configuration.
prefix '/software/components/chkconfig';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");

# Package to install
"/software/packages" = pkg_repl("ncm-chkconfig", "17.8.0-1", "noarch");
