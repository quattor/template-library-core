# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# 

 
unique template components/sysconfig/config-rpm;
include { 'components/sysconfig/schema' };
 
# Package to install
"/software/packages" = pkg_repl("ncm-sysconfig", "14.10.1-SNAPSHOT20150305103434", "noarch");

'/software/components/sysconfig/dependencies/pre' ?= list('spma');

'/software/components/sysconfig/version' ?= '14.10.1';
