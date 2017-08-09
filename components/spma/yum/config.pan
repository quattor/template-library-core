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


unique template components/spma/yum/config;

# Prefix for packages/groups
prefix '/software';

'groups' ?= dict();

# Package to install
'packages' = pkg_repl("ncm-spma", "17.7.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/spma';

'packager' = 'yum';

'register_change' ?= list(
    "/software/groups",
    "/software/packages",
    "/software/repositories",
);
