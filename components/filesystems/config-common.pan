# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 
# #
# filesystems, 18.3.0-rc3, rc3_1, Wed May 02 2018
#

unique template components/filesystems/config-common;

include 'components/filesystems/schema';

# Set prefix to root of component configuration.
prefix '/software/components/filesystems';

#'version' = '18.3.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
