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


unique template components/spma/yumdnf/config;

include 'components/spma/config-common-yum';

prefix '/software/components/spma';
'packager' = 'yumdnf';
'register_change' = append("/software/modules");

'/software/modules' ?= dict();

bind "/software/components/spma" = component_spma_yumdnf;
bind "/software/groups" = dict with length(SELF) == 0;
bind '/software/modules' = component_spma_dnf_module_simple{};
