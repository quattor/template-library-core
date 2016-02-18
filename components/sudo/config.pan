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
# sudo, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/sudo/config;

include { 'components/sudo/config-common' };
include { 'components/sudo/config-rpm' };
