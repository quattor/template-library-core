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

############################################################
#
# type definition components/chkconfig
#
#
#
############################################################
 
unique template components/chkconfig/config-rpm;
include { 'components/chkconfig/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-chkconfig", "15.2.0-1", "noarch");

 
"/software/components/chkconfig/dependencies/pre" ?= list("spma");
"/software/components/chkconfig/active" ?= true;
"/software/components/chkconfig/dispatch" ?= true;
 
