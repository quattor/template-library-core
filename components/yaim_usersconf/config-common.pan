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
# yaim_usersconf, 15.8.0, 1, 2015-10-29T11:34:15Z
#

unique template components/yaim_usersconf/config-common;

include { 'components/yaim_usersconf/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim_usersconf';

'version' = '15.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
