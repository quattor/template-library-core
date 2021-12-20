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
# fstab, 21.12.0-rc1, rc1_1, Mon Dec 20 2021
#

unique template components/fstab/config-common;

include 'components/fstab/schema';

# Set prefix to root of component configuration.
prefix '/software/components/fstab';

#'version' = '21.12.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
