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
      # vomsclient, 13.1.1, 1, 20130718-1811
      #

unique template components/vomsclient/config-xml;

include { 'components/vomsclient/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/vomsclient';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/vomsclient/vomsclient.pm'); 
