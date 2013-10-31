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
      # pam, 13.1.2, 1, 20131015-1106
      #

unique template components/pam/config-xml;

include { 'components/pam/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pam';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pam/pam.pm'); 
