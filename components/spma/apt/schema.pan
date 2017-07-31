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


declaration template components/spma/apt/schema;

include 'components/spma/schema';

type component_spma_apt = {
    include structure_component
    include component_spma_common
    @{ Allow user defined (i.e. unmanaged) repositories to be present on the system }
    "userrepos" : boolean = false
    @{ Allow user installed (i.e. unmanaged) packages to be present on the system }
    "userpkgs" : boolean = false
};

bind "/software/components/spma" = component_spma_apt;
