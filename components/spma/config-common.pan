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
      # spma, 14.10.0-rc4, rc4_1, 20141112-1118
      #

unique template components/spma/config-common;

# Set prefix to root of component configuration.
prefix '/software/components/spma';

#'version' = '14.10.0-rc4';
#'package' = 'NCM::Component';

'run' ?= "yes";
'active' ?= true;
'dispatch' ?= true;
