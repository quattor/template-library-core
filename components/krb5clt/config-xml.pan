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
      # krb5clt, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141725, 20140507-1516
      #

unique template components/krb5clt/config-xml;

include { 'components/krb5clt/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/krb5clt';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/krb5clt/krb5clt.pm'); 
