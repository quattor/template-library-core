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
      # srvtab, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141716, 20140507-1516
      #

unique template components/srvtab/config-common;

include { 'components/srvtab/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/srvtab';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
