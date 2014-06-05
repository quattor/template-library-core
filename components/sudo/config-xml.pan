# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sudo, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/sudo/config-xml;

include { 'components/sudo/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sudo';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sudo/sudo.pm'); 
