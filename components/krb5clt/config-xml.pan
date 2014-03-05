# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # krb5clt, 13.1.2, 1, 20131015-1106
      #

unique template components/krb5clt/config-xml;

include { 'components/krb5clt/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/krb5clt';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/krb5clt/krb5clt.pm'); 
