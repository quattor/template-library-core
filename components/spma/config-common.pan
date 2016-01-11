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
# spma, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/spma/config-common;

# Set prefix to root of component configuration.
prefix '/software/components/spma';

#'version' = '15.12.0-rc3';
#'package' = 'NCM::Component';

'run' ?= "yes";
'active' ?= true;
'dispatch' ?= true;
