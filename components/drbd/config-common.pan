# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # drbd, 13.1.2, 1, 20131015-1106
      #

unique template components/drbd/config-common;

include { 'components/drbd/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/drbd';

#'version' = '13.1.2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
