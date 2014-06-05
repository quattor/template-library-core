# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vladimir Bahyl <Vladimir.Bahyl@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # interactivelimits, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/interactivelimits/config-xml;

include { 'components/interactivelimits/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/interactivelimits/interactivelimits.pm'); 
