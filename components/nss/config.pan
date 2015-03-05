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
      # nss, 14.10.1-SNAPSHOT, SNAPSHOT20150305103440, 20150305-1034
      #

################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/nss/config;

include { 'components/nss/schema' };

include { 'pan/functions' };

# Package to install.
"/software/packages" = pkg_repl("ncm-nss", "14.10.1-SNAPSHOT20150305103440", "noarch");

# standard component settings
"/software/components/nss/active"   ?=  true ;
"/software/components/nss/dispatch" ?=  false ;
"/software/components/nss/version"   = "14.10.1-SNAPSHOT";

