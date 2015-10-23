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
# altlogrotate, 15.8.0-rc6, rc6_1, 2015-10-23T12:33:34Z
#

unique template components/altlogrotate/config-common;

include { 'components/altlogrotate/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/altlogrotate';

#'version' = '15.8.0-rc6';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
