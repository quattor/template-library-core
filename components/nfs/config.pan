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
# nfs, 16.8.0-rc3, rc3_1, Tue Sep 13 2016
#

unique template components/nfs/config;

include 'components/nfs/schema';

bind '/software/components/nfs' = component_nfs;
    
prefix '/software/components/nfs';
'active' ?= true;
'dispatch' ?= true;
'version' = '16.8.0';
'dependencies/pre' ?= list('spma');

"/software/packages" = pkg_repl("ncm-nfs", "16.8.0-rc3_1", "noarch");
