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
# nss, 15.8.0-rc5, rc5_1, 2015-10-07T15:51:08Z
#

################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/nss/config;

include { 'components/nss/schema' };

include { 'pan/functions' };

# Package to install.
"/software/packages" = pkg_repl("ncm-nss", "15.8.0-rc5_1", "noarch");

# standard component settings
"/software/components/nss/active"   ?=  true ;
"/software/components/nss/dispatch" ?=  false ;
"/software/components/nss/version"   = "15.8.0-rc5";

