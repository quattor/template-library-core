# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pine, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141722, 20140507-1516
      #

unique template components/pine/config-common;

include { 'components/pine/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/pine';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
