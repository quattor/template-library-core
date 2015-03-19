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
# pbsknownhosts, 15.2.0-rc5, rc5_1, 20150319-1200
#

unique template components/pbsknownhosts/config-xml;

include { 'components/pbsknownhosts/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pbsknownhosts';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pbsknownhosts/pbsknownhosts.pm'); 
