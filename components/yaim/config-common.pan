# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@yahoo.de>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# yaim, 15.4.0-rc12, rc12_1, 2015-06-03T08:55:39Z
#

unique template components/yaim/config-common;

include { 'components/yaim/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim';

'version' = '15.4.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
