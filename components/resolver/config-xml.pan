# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   njw <njw>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # resolver, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141721, 20140507-1516
      #

unique template components/resolver/config-xml;

include { 'components/resolver/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/resolver';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/resolver/resolver.pm'); 
