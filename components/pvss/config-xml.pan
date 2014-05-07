# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Loic Brarda <Loic.Brarda@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pvss, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141727, 20140507-1516
      #

unique template components/pvss/config-xml;

include { 'components/pvss/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pvss';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pvss/pvss.pm'); 
