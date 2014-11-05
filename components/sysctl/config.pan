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
      # sysctl, 14.10.0-rc2, rc2_1, 20141105-1011
      #

unique template components/sysctl/config;

include { 'components/sysctl/config-common' };
include { 'components/sysctl/config-rpm' };
