# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <Stijn.De.Weirdt@cern.ch>
#

# 
# #
      # sindes_getcert, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141728, 20140507-1516
      #

unique template components/sindes_getcert/config-xml;

include { 'components/sindes_getcert/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sindes_getcert';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sindes_getcert/sindes_getcert.pm'); 
