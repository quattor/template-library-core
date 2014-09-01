# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Benjamin Chardi <Benjamin.Chardi.Marco@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sysctl, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174526, 20140901-1845
      #

unique template components/sysctl/config-xml;

include { 'components/sysctl/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sysctl';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sysctl/sysctl.pm'); 
