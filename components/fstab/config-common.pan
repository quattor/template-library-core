# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Fernando.Munoz.Mejias@cern.ch>
#

# 
# #
# fstab, 14.12.0-rc4, rc4_1, 20150112-1343
#

unique template components/fstab/config-common;

include { 'components/fstab/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/fstab';

#'version' = '14.12.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
