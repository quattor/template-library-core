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
# lbconfig, 15.4.0-rc2, rc2_1, 20150513-1259
#

unique template components/lbconfig/config-common;

include { 'components/lbconfig/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/lbconfig';

'version' = '15.4.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
