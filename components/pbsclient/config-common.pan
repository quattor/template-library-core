# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# pbsclient, 24.10.0-rc3, rc3_1, Wed Nov 06 2024
#

unique template components/pbsclient/config-common;

include 'components/pbsclient/schema';

# Set prefix to root of component configuration.
prefix '/software/components/pbsclient';

'version' = '24.10.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
