# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # filesystems, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/filesystems/config-common;

include { 'components/filesystems/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/filesystems';

#'version' = '14.5.0-rc9';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
