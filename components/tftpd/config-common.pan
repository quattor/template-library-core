# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Matthias Schroder <Matthias.Schroder@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # tftpd, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141730, 20140507-1516
      #

unique template components/tftpd/config-common;

include { 'components/tftpd/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/tftpd';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
