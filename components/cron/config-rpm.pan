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



unique template components/cron/config-rpm;
include { 'components/cron/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-cron", "14.4.0-rc3_SNAPSHOT20140507141713", "noarch");

'/software/components/cron/dependencies/pre' ?= list('spma');

'/software/components/cron/version' = '14.4.0';
