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


#
# This template should be included as last statement in any node profile
#
################################################################################

template  components/spma/repository_cleanup;


"/software/packages" = resolve_pkg_rep(value("/software/repositories"));
"/software/repositories" = purge_rep_list(value("/software/packages"));


