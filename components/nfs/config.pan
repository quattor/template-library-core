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
# #
# nfs, 17.2.0-rc1, rc1_1, Mon Feb 27 2017
#

unique template components/nfs/config;

include 'components/nfs/schema';

bind '/software/components/nfs' = component_nfs;

prefix '/software/components/nfs';
'active' ?= true;
'dispatch' ?= true;
'version' = '17.2.0';
'dependencies/pre' ?= list('spma');

"/software/packages" = pkg_repl("ncm-nfs", "17.2.0-rc1_1", "noarch");
