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
# vomsclient, 16.8.0-rc3, rc3_1, Tue Sep 13 2016
#

unique template components/vomsclient/config-common;

include { 'components/vomsclient/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/vomsclient';

'version' = '16.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
