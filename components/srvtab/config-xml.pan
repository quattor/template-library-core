# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # srvtab, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141716, 20140507-1516
      #

unique template components/srvtab/config-xml;

include { 'components/srvtab/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/srvtab';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/srvtab/srvtab.pm'); 
