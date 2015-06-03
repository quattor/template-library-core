# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# 
# #
# nsca, 15.4.0-rc14, rc14_1, 2015-06-03T12:02:34Z
#

unique template components/nsca/config-xml;

include { 'components/nsca/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nsca/nsca.pm'); 
