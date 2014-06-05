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
      # myproxy, 14.5.0-rc9, rc9_1, 20140605-1525
      #

unique template components/myproxy/config-xml;

include { 'components/myproxy/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/myproxy';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/myproxy/myproxy.pm'); 
