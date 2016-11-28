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
# nfs, 16.10.0, 1, Mon Nov 28 2016
#

unique template components/nfs/config;

include 'components/nfs/schema';

bind '/software/components/nfs' = component_nfs;
    
prefix '/software/components/nfs';
'active' ?= true;
'dispatch' ?= true;
'version' = '16.10.0';
'dependencies/pre' ?= list('spma');

"/software/packages" = pkg_repl("ncm-nfs", "16.10.0-1", "noarch");
