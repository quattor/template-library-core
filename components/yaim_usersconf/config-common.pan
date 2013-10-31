# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan van Eldik <Jan.van.Eldik@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # yaim_usersconf, 13.1.2, 1, 20131015-1127
      #

unique template components/yaim_usersconf/config-common;

include { 'components/yaim_usersconf/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim_usersconf';

'version' = '13.1.2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
