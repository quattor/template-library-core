# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# #
# Author(s): Daniel Jouvenot
#

# #
      # openldap, 14.8.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140901141108, 20140901-1511
      #

unique template components/openldap/config-xml;

include { 'components/openldap/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/openldap';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/openldap/openldap.pm'); 
