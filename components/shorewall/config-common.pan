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
# shorewall, 15.4.0-rc5, rc5_1, 2015-05-27T15:51:56Z
#

unique template components/shorewall/config-common;

include { 'components/shorewall/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/shorewall';

#'version' = '15.4.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
