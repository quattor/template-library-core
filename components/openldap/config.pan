# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# #
# Author(s): Daniel Jouvenot
#

# #
# openldap, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/openldap/config;

include { 'components/openldap/config-common' };
include { 'components/openldap/config-rpm' };
