# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/hostsaccess/config-rpm;
include {'components/hostsaccess/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-hostsaccess", "13.1.2-1", "noarch");

'/software/components/hostsaccess/dependencies/pre' ?= list('spma');

'/software/components/hostsaccess/version' = '13.1.2';
