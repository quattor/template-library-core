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
      # xen, 13.1.2, 1, 20131015-1106
      #

unique template components/xen/config-xml;

include { 'components/xen/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/xen';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/xen/xen.pm'); 
