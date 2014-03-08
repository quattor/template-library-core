# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sysconfig, 14.2.1, 1, 20140304-2351
      #

unique template components/sysconfig/config-xml;

include { 'components/sysconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sysconfig/sysconfig.pm'); 
