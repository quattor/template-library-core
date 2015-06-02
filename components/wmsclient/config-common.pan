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
# wmsclient, 15.4.0-rc11, rc11_1, 2015-06-02T11:20:26Z
#

unique template components/wmsclient/config-common;

include { 'components/wmsclient/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/wmsclient';

'version' = '15.4.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
