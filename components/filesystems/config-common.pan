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
# filesystems, 15.4.0-rc1, rc1_1, 20150507-1446
#

unique template components/filesystems/config-common;

include { 'components/filesystems/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/filesystems';

#'version' = '15.4.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
