# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# dpmlfc, 15.8.0, 1, 2015-10-29T11:34:15Z
#

unique template components/dpmlfc/config-common;

include { 'components/dpmlfc/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/dpmlfc';

'version' = '15.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
