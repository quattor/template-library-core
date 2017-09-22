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
# pbsclient, 17.8.0-rc1, rc1_1, Fri Sep 22 2017
#

unique template components/pbsclient/config-common;

include 'components/pbsclient/schema';

# Set prefix to root of component configuration.
prefix '/software/components/pbsclient';

'version' = '17.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
