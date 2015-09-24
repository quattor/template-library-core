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
# pbsknownhosts, 15.8.0-rc3, rc3_1, 2015-09-24T17:03:57Z
#

unique template components/pbsknownhosts/config-xml;

include { 'components/pbsknownhosts/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pbsknownhosts';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pbsknownhosts/pbsknownhosts.pm'); 
