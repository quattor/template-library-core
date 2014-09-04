# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


 
unique template components/sysconfig/config-rpm;
include { 'components/sysconfig/schema' };
 
# Package to install
"/software/packages" = pkg_repl("ncm-sysconfig", "14.8.0-rc5_SNAPSHOT20140904163508", "noarch");

'/software/components/sysconfig/dependencies/pre' ?= list('spma');

'/software/components/sysconfig/version' ?= '14.8.0';
