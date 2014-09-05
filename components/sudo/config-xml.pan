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
# Author(s): Luis Fernando Muñoz Mejías, Nick Williams, Loic Brarda
#

# #
      # sudo, 14.8.0-rc5, rc5_1, 20140905-1421
      #

unique template components/sudo/config-xml;

include { 'components/sudo/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sudo';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sudo/sudo.pm'); 
