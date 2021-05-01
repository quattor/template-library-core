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
# Author(s): Germán Cancio, Marco Emilio Poleggi, Michel Jouvin, Jan Iven, Mark R. Bannister, Jindrich Novy, James Adams
#


unique template components/spma/dnf/config;

prefix '/software';
# Package to install
'packages' = pkg_repl("ncm-spma", "21.4.0-rc2_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/spma';

'register_change' ?= list("/software/packages", "/software/repositories");
