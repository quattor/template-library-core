# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # autofs, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141722, 20140507-1516
      #

unique template components/autofs/config-xml;

include { 'components/autofs/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/autofs';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/autofs/autofs.pm'); 
