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
# Author(s): Germán Cancio, Marco Emilio Poleggi, Michel Jouvin, Jan Iven, Mark R. Bannister, Jindrich Novy
#

# #
# spma, 16.8.0-rc3, rc3_1, Tue Sep 13 2016
#

unique template components/spma/config;

variable CONFIG_MODULES_CONFIG_SUFFIX ?= 'rpm';

include { 'components/spma/schema' };
include { 'components/spma/functions' };

include { 'components/spma/config-common' };
include { 'components/spma/config-'+CONFIG_MODULES_CONFIG_SUFFIX };
