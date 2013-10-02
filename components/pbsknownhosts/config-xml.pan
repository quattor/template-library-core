# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pbsknownhosts, 13.1.1, 1, 20130718-1811
      #

unique template components/pbsknownhosts/config-xml;

include { 'components/pbsknownhosts/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pbsknownhosts';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pbsknownhosts/pbsknownhosts.pm'); 
