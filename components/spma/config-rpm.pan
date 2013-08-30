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
# Author(s): Germán Cancio, Marco Emilio Poleggi, Michel Jouvin, Jan Iven
#



unique template components/spma/config-rpm;
include { 'components/spma/schema' };
include { 'components/spma/functions' };

# Package to install
"/software/packages" = pkg_repl("ncm-spma", "13.6.0-1", "noarch");


"/software/components/spma/active" ?= true;
"/software/components/spma/dispatch" ?= true;
"/software/components/spma/register_change" ?= list("/software/packages");

"/software/components/spma/run" ?= "yes";
