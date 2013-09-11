# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan/iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # selinux, 13.9.0, 1, 20130911-1927
      #

unique template components/selinux/config-xml;

include { 'components/selinux/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/selinux';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/selinux/selinux.pm'); 
