# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Hugo Cacote <Hugo.Cacote@cern.ch>
#

# 
# #
# modprobe, 21.12.1-rc3, rc3_1, Tue Oct 25 2022
#

unique template components/modprobe/config;

include 'components/modprobe/schema';

# Package to install
"/software/packages" = pkg_repl("ncm-modprobe", "21.12.1-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/modprobe';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
