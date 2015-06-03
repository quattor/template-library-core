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
# Author(s): Germán Cancio, Marco Emilio Poleggi, Michel Jouvin, Jan Iven, Mark R. Bannister
#

# #
# spma, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/spma/config;

variable CONFIG_MODULES_CONFIG_SUFFIX ?= 'rpm';

include { 'components/spma/schema' };
include { 'components/spma/functions' };

include { 'components/spma/config-common' };
include { 'components/spma/config-'+CONFIG_MODULES_CONFIG_SUFFIX };
