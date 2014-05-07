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
      # mailaliases, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141707, 20140507-1516
      #

unique template components/mailaliases/config-xml;

include { 'components/mailaliases/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/mailaliases';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/mailaliases/mailaliases.pm'); 
