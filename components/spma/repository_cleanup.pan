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


#
# This template should be included as last statement in any node profile
#
################################################################################

template  components/spma/repository_cleanup;

# Remove contents attached to repository (useless after version resolution, not part of the schema)
"/software/repositories" = purge_rep_list(value("/software/packages"));


