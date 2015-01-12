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
# altlogrotate, 14.12.0-rc3, rc3_1, 20150112-1043
#

unique template components/altlogrotate/config-common;

include { 'components/altlogrotate/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/altlogrotate';

#'version' = '14.12.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
