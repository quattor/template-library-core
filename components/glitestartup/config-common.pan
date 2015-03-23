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
# glitestartup, 15.2.0, 1, 20150323-1249
#

unique template components/glitestartup/config-common;

include { 'components/glitestartup/schema' };
include { 'components/glitestartup/functions' };

# Set prefix to root of component configuration.
prefix '/software/components/glitestartup';

'version' = '15.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
