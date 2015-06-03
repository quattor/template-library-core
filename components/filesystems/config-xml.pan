# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 
# #
# filesystems, 15.4.0-rc12, rc12_1, 2015-06-03T08:50:01Z
#

unique template components/filesystems/config-xml;

include { 'components/filesystems/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/filesystems';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/filesystems/filesystems.pm'); 
