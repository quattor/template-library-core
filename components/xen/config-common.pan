# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stephen Childs (childss@cs.tcd.ie) <Stephen Childs (childss@cs.tcd.ie)>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # xen, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141721, 20140507-1516
      #

unique template components/xen/config-common;

include { 'components/xen/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/xen';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
