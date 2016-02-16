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
# wmsclient, 16.2.0-rc1, rc1_1, 2016-02-16T12:49:17Z
#

unique template components/wmsclient/config-common;

include { 'components/wmsclient/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/wmsclient';

'version' = '16.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
