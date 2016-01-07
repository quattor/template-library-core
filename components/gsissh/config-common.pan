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
# gsissh, 15.12.0-rc2, rc2_1, 2016-01-07T14:03:08Z
#

unique template components/gsissh/config-common;

include { 'components/gsissh/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gsissh';

'version' = '15.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
