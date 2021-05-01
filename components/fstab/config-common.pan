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
# fstab, 21.4.0-rc2, rc2_1, Sat May 01 2021
#

unique template components/fstab/config-common;

include 'components/fstab/schema';

# Set prefix to root of component configuration.
prefix '/software/components/fstab';

#'version' = '21.4.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
