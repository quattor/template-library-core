# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Morgan Stanley
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 
# #
# nss, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/nss/config;

include 'components/nss/schema';

include 'pan/functions';

# Package to install.
"/software/packages" = pkg_repl("ncm-nss", "23.9.0-rc1_1", "noarch");

# standard component settings
prefix '/software/components/nss';
'active' ?= true;
'dispatch' ?= true;
'version' = "23.9.0";
