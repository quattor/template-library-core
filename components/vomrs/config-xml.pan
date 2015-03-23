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

unique template components/vomrs/config-xml;

include { 'components/vomrs/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/vomrs';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/vomrs/vomrs.pm'); 
