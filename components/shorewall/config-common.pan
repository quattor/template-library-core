# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 
# #
# shorewall, 16.6.0-rc4, rc4_1, Fri Jul 15 2016
#

unique template components/shorewall/config-common;

include { 'components/shorewall/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/shorewall';

#'version' = '16.6.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
