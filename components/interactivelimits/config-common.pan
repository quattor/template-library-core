# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vladimir Bahyl <Vladimir.Bahyl@cern.ch>
#

# 
# #
# interactivelimits, 15.8.0, 1, 2015-10-29T11:33:30Z
#

unique template components/interactivelimits/config-common;

include { 'components/interactivelimits/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

#'version' = '15.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
