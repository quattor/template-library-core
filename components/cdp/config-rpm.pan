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


unique template components/cdp/config-rpm;
include { 'components/cdp/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-cdp", "15.4.0-1", "noarch");

'/software/components/cdp/dependencies/pre' ?= list('spma');

'/software/components/cdp/version' = '15.4.0';

