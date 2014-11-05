# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Joao Martins <alasdair.earl@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # iptables, 14.10.0-rc2, rc2_1, 20141105-1011
      #

unique template components/iptables/config-common;

include { 'components/iptables/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/iptables';

#'version' = '14.10.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
