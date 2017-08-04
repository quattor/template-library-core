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
# lbconfig, 17.7.0-rc2, rc2_1, Fri Aug 04 2017
#

unique template components/lbconfig/config-common;

include 'components/lbconfig/schema';

# Set prefix to root of component configuration.
prefix '/software/components/lbconfig';

'version' = '17.7.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
