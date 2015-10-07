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
# gacl, 15.8.0-rc5, rc5_1, 2015-10-07T15:57:40Z
#

unique template components/gacl/config-common;

include { 'components/gacl/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gacl';

'version' = '15.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
