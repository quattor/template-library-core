# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# 
# #
# sysconfig, 15.4.0-rc5, rc5_1, 2015-05-27T15:51:56Z
#

unique template components/sysconfig/config-common;

include { 'components/sysconfig/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

#'version' = '15.4.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
