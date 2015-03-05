# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 


unique template components/hostsaccess/config-rpm;
include {'components/hostsaccess/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-hostsaccess", "14.10.1-SNAPSHOT20150305103429", "noarch");

'/software/components/hostsaccess/dependencies/pre' ?= list('spma');

'/software/components/hostsaccess/version' = '14.10.1';
