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
# dirperm, 15.8.0-rc4, rc4_1, 2015-10-07T14:48:46Z
#

unique template components/dirperm/config-common;

include { 'components/dirperm/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/dirperm';

#'version' = '15.8.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
