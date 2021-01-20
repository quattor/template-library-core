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
# nss, 20.12.0, 1, Wed Jan 20 2021
#

################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/nss/config;

include 'components/nss/schema';

include 'pan/functions';

# Package to install.
"/software/packages" = pkg_repl("ncm-nss", "20.12.0-1", "noarch");

# standard component settings
prefix '/software/components/nss';
'active' ?= true;
'dispatch' ?= true;
'version' = "20.12.0";
