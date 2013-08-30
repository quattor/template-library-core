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
      # tftpd, 13.6.0, 1, 20130830-1517
      #

unique template components/tftpd/config-common;

include { 'components/tftpd/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/tftpd';

#'version' = '13.6.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
