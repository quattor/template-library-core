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
# myproxy, 15.12.0, 1, 2016-01-11T14:37:03Z
#

unique template components/myproxy/config-common;

include { 'components/myproxy/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/myproxy';

'version' = '15.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
