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
# nfs, 15.4.0-rc3, rc3_1, 2015-05-14T14:58:27Z
#

unique template components/nfs/config-common;

include { 'components/nfs/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nfs';

#'version' = '15.4.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
