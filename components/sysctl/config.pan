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
      # sysctl, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/sysctl/config;

include { 'components/sysctl/config-common' };
include { 'components/sysctl/config-rpm' };
