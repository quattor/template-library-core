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
# gsissh, 15.4.0-rc5, rc5_1, 2015-05-27T16:02:16Z
#

unique template components/gsissh/config-common;

include { 'components/gsissh/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gsissh';

'version' = '15.4.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
