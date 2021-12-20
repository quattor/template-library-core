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


@{spma yumdnf backend specific statements for spmalight}

unique template components/spma/yumdnf/light;

# changes here might require changes in components/spma/yum/light

bind "/software/components/spmalight" = component_spma_yumdnf;
