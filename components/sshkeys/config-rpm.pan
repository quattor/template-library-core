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



unique template components/sshkeys/config-rpm;

include { 'components/sshkeys/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-sshkeys", "14.4.0-rc3_SNAPSHOT20140507141723", "noarch");

'/software/components/sshkeys/dependencies/pre' ?= list('spma');

'/software/components/sshkeys/version' = '14.4.0';

