# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 
# #
# named, 15.4.0-rc5, rc5_1, 2015-05-27T15:51:56Z
#

unique template components/named/config;

include { 'components/named/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-named", "15.4.0-rc5_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/named';

'version' ?= '15.4.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= append('spma');
 
