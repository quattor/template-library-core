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
# filesystems, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/filesystems/config;

include { 'components/filesystems/config-common' };
include { 'components/filesystems/config-rpm' };
