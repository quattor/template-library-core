# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# vomsclient, 18.12.0-rc9, rc9_1, Tue Jan 21 2020
#

unique template components/vomsclient/config-common;

include 'components/vomsclient/schema';

# Set prefix to root of component configuration.
prefix '/software/components/vomsclient';

'version' = '18.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
