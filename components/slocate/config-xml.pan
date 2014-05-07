# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # slocate, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141711, 20140507-1516
      #

unique template components/slocate/config-xml;

include { 'components/slocate/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/slocate';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/slocate/slocate.pm'); 
