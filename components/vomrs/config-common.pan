# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Steve Traylen <steve.traylen@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# vomrs, 15.2.0, 1, 20150323-1249
#

unique template components/vomrs/config-common;

include { 'components/vomrs/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/vomrs';

'version' = '15.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
