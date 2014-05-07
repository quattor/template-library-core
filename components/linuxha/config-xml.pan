# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andras Horvath <Andras.Horvath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # linuxha, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141725, 20140507-1516
      #

unique template components/linuxha/config-xml;

include { 'components/linuxha/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/linuxha';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/linuxha/linuxha.pm'); 
