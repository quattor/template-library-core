# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <guillaume.philippon@lal.in2p3.fr>
#

# #
# Author(s): Guillaume PHILIPPON
#

# #
      # ganglia, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174527, 20140901-1845
      #

unique template components/ganglia/config-xml;

include { 'components/ganglia/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ganglia';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ganglia/ganglia.pm'); 
