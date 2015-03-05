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
# nsca, 15.2.0-rc3, rc3_1, 20150305-2157
#

unique template components/nsca/config-xml;

include { 'components/nsca/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nsca/nsca.pm'); 
