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
# dirperm, 18.12.0-rc0, rc0_1, Thu Dec 13 2018
#

unique template components/dirperm/config;

include "components/dirperm/schema";

# Package to install
"/software/packages" = pkg_repl("ncm-dirperm", "18.12.0-rc0_1", "noarch");

prefix '/software/components/dirperm';

'dependencies/pre' ?= list('spma');
'register_change' ?= list('/system/filesystems');
'version' = '18.12.0';
'active' ?= true;
'dispatch' ?= true;
