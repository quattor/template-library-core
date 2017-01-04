# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# glitestartup, 16.12.0, 1, Wed Jan 04 2017
#

unique template components/glitestartup/config-common;

include 'components/glitestartup/schema';
include 'components/glitestartup/functions';

# Set prefix to root of component configuration.
prefix '/software/components/glitestartup';

'version' = '16.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
