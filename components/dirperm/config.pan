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
# dirperm, 17.8.0-rc2, rc2_1, Mon Oct 09 2017
#

unique template components/dirperm/config;

include "components/dirperm/schema";

# Package to install
"/software/packages" = pkg_repl("ncm-dirperm", "17.8.0-rc2_1", "noarch");

prefix '/software/components/dirperm';

'dependencies/pre' ?= list('spma');
'register_change' ?= list('/system/filesystems');
'version' = '17.8.0';
'active' ?= true;
'dispatch' ?= true;
