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
      # drbd, 14.2.1, 1, 20140304-2345
      #

unique template components/drbd/config-common;

include { 'components/drbd/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/drbd';

#'version' = '14.2.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
