# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <philippo@lal.in2p3.fr>
#

# 
# #
      # ipmi, 14.10.0-rc4, rc4_1, 20141112-1118
      #

unique template components/ipmi/config-xml;

include { 'components/ipmi/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ipmi';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ipmi/ipmi.pm'); 
