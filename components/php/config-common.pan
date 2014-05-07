# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Judit Novak <Judit.Novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # php, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141720, 20140507-1516
      #

unique template components/php/config-common;

include { 'components/php/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/php';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
