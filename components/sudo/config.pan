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
# sudo, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/sudo/config;

include { 'components/sudo/config-common' };
include { 'components/sudo/config-rpm' };
