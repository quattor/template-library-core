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
# ipmi, 15.2.0, 1, 20150323-1248
#

unique template components/ipmi/config-xml;

include { 'components/ipmi/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ipmi';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ipmi/ipmi.pm'); 
