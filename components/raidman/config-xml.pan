# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # raidman, 13.6.0, 1, 20130830-1517
      #

unique template components/raidman/config-xml;

include { 'components/raidman/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/raidman';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/raidman/raidman.pm'); 
