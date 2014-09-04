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
      # fsprobe, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163510, 20140904-1735
      #

unique template components/fsprobe/config-xml;

include { 'components/fsprobe/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/fsprobe';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/fsprobe/fsprobe.pm'); 
