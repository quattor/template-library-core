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


declaration template components/spma/schema;

include 'pan/legacy';
include 'quattor/types/component';
include 'components/spma/functions';
include 'components/spma/software';

type component_spma_common = {
    "packager" : choice("yum", "yumng", "ips", "apt", "yumdnf") = "yum" # system packager to be used
};

bind "/software/packages" = SOFTWARE_PACKAGE {} {};
bind "/software/repositories" = SOFTWARE_REPOSITORY [];
