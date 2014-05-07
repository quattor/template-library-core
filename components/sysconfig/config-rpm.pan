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
"/software/packages" = pkg_repl("ncm-sysconfig", "14.4.0-rc3_SNAPSHOT20140507141718", "noarch");

'/software/components/sysconfig/dependencies/pre' ?= list('spma');

'/software/components/sysconfig/version' ?= '14.4.0';
