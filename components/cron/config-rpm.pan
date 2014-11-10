# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#

# 


unique template components/cron/config-rpm;
include { 'components/cron/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-cron", "14.10.0-rc3_1", "noarch");

'/software/components/cron/dependencies/pre' ?= list('spma');

'/software/components/cron/version' = '14.10.0';
