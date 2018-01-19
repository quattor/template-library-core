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


unique template components/spma/apt/config;

prefix '/software';

'packages' = pkg_repl("ncm-spma", "17.12.0-rc3_1", "noarch");

prefix '/software/components/spma';

'packager' = 'apt';

'register_change' ?= list(
    "/software/packages",
    "/software/repositories",
);
