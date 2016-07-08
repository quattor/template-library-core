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
# dirperm, 16.6.0-rc3, rc3_1, Fri Jul 08 2016
#

unique template components/dirperm/config;

include "components/dirperm/schema";

# Package to install
"/software/packages" = pkg_repl("ncm-dirperm", "16.6.0-rc3_1", "noarch");

prefix '/software/components/dirperm';

'dependencies/pre' ?= list('spma');
'register_change' ?= list('/system/filesystems');
'version' = '16.6.0';
'active' ?= true;
'dispatch' ?= true;
