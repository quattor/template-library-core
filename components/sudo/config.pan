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
# sudo, 15.8.0-rc1, rc1_1, 2015-09-24T15:01:42Z
#

unique template components/sudo/config;

include { 'components/sudo/config-common' };
include { 'components/sudo/config-rpm' };
