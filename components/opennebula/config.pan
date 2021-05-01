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
# #
# opennebula, 21.4.0-rc2, rc2_1, Sat May 01 2021
#

unique template components/opennebula/config;


include 'components/opennebula/schema';

bind '/software/components/opennebula' = component_opennebula;

# Set prefix to root of component configuration.
prefix '/software/components/opennebula';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.4.0';
'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

# Package to install
"/software/packages" = pkg_repl("ncm-opennebula", "21.4.0-rc2_1", "noarch");

include 'components/opennebula/sudo';
