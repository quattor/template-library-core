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
# spma, 16.12.0-rc2, rc2_1, Thu Dec 15 2016
#

unique template components/spma/config-common;

# Set prefix to root of component configuration.
prefix '/software/components/spma';

#'version' = '16.12.0-rc2';
#'package' = 'NCM::Component';

'run' ?= "yes";
'active' ?= true;
'dispatch' ?= true;
