# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan/iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # selinux, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141718, 20140507-1516
      #

unique template components/selinux/config-common;

include { 'components/selinux/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/selinux';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
