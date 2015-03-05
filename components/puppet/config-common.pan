# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andrea Sartirana <sartiran@llr.in2p3.fr>
#

# 
# #
# puppet, 14.10.1-SNAPSHOT, SNAPSHOT20150305103439, 20150305-1034
#

unique template components/puppet/config-common;

include { 'components/puppet/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/puppet';

'version' = '14.10.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
