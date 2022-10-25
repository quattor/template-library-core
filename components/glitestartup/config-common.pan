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
# glitestartup, 21.12.1-rc3, rc3_1, Tue Oct 25 2022
#

unique template components/glitestartup/config-common;

include 'components/glitestartup/schema';
include 'components/glitestartup/functions';

# Set prefix to root of component configuration.
prefix '/software/components/glitestartup';

'version' = '21.12.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
