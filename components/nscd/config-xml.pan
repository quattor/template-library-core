# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan.Iven@cern.ch <Jan.Iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # nscd, 14.10.0-rc1, rc1_1, 20141029-1800
      #

unique template components/nscd/config-xml;

include { 'components/nscd/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nscd';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nscd/nscd.pm'); 
