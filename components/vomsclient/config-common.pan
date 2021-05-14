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
# vomsclient, 21.4.0, 1, Fri May 14 2021
#

unique template components/vomsclient/config-common;

include 'components/vomsclient/schema';

# Set prefix to root of component configuration.
prefix '/software/components/vomsclient';

'version' = '21.4.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
