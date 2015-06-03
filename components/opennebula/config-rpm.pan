# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#

# 


unique template components/opennebula/config-rpm;
include {'components/opennebula/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-opennebula", "15.4.0-1", "noarch");

'/software/components/opennebula/dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

'/software/components/opennebula/version' ?= '15.4.0';

