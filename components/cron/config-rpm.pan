# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# 


unique template components/cron/config-rpm;
include 'components/cron/schema';

# Package to install
"/software/packages" = pkg_repl("ncm-cron", "17.3.0-rc1_1", "noarch");

'/software/components/cron/dependencies/pre' ?= list('spma');

'/software/components/cron/version' = '17.3.0';
