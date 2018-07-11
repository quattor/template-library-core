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
# dirperm, 18.6.0-rc1, rc1_1, Wed Jul 11 2018
#

unique template components/dirperm/config;

include "components/dirperm/schema";

# Package to install
"/software/packages" = pkg_repl("ncm-dirperm", "18.6.0-rc1_1", "noarch");

prefix '/software/components/dirperm';

'dependencies/pre' ?= list('spma');
'register_change' ?= list('/system/filesystems');
'version' = '18.6.0';
'active' ?= true;
'dispatch' ?= true;
