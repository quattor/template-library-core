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
# lbconfig, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/lbconfig/config-common;

include 'components/lbconfig/schema';

# Set prefix to root of component configuration.
prefix '/software/components/lbconfig';

'version' = '23.9.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
