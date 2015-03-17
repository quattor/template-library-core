# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
# cdp, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/cdp/config-common;

include { 'components/cdp/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/cdp';

#'version' = '15.2.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
