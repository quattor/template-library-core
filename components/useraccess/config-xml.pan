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
      # useraccess, 14.5.0-rc8, rc8_1, 20140605-1139
      #

unique template components/useraccess/config-xml;

include { 'components/useraccess/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/useraccess';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/useraccess/useraccess.pm'); 
