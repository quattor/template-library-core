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
# opennebula, 16.10.0, 1, Mon Nov 28 2016
#

unique template components/opennebula/config;


include 'components/opennebula/schema';

bind '/software/components/opennebula' = component_opennebula;

# Set prefix to root of component configuration.
prefix '/software/components/opennebula';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '16.10.0';
'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

# Package to install
"/software/packages" = pkg_repl("ncm-opennebula", "16.10.0-1", "noarch");

include 'components/opennebula/sudo';
