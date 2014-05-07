# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andras Horvath <andras.horvath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # iscsitarget, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141719, 20140507-1516
      #

unique template components/iscsitarget/config-common;

include { 'components/iscsitarget/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/iscsitarget';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
