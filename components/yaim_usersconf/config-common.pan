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
      # yaim_usersconf, 14.8.0, 1, 20140908-1650
      #

unique template components/yaim_usersconf/config-common;

include { 'components/yaim_usersconf/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim_usersconf';

'version' = '14.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
