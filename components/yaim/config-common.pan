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
# yaim, 16.8.0, 1, Thu Sep 15 2016
#

unique template components/yaim/config-common;

include { 'components/yaim/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim';

'version' = '16.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
