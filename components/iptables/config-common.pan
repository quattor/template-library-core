# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Joao Martins <alasdair.earl@cern.ch>
#

# 
# #
# iptables, 15.4.0-rc13, rc13_1, 2015-06-03T10:01:23Z
#

unique template components/iptables/config-common;

include { 'components/iptables/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/iptables';

#'version' = '15.4.0-rc13';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
