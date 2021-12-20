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


declaration template components/spma/yumdnf/schema;

include 'components/spma/yum/schema';

type component_spma_yumdnf = {
    include component_spma_yum
    @{configure modules (or not). modules configuration is under /software/modules}
    'modules' : boolean = false
};
