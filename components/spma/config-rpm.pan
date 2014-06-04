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



unique template components/spma/config-rpm;

# Set prefix to root of component configuration.
prefix '/software/components/spma';
"/software/groups" ?= nlist();
'packager' = 'yum';
'register_change' ?= list("/software/packages",
                          "/software/repositories");
# Package to install
prefix '/software';
'packages' = pkg_repl("ncm-spma", "14.4.0-rc3_SNAPSHOT20140507141729", "noarch");


