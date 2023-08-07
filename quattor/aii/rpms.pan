# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#   Ronald Starink <ronalds@nikhef.nl>
#

# #
# Author(s): Michel Jouvin, Ben Jones, Gabor Gombas, Nick Williams, Stijn De Weirdt
#

# #
# server, 23.6.0-rc2, rc2_1, Mon Aug 07 2023
#

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages" = pkg_repl("aii-server", "23.6.0-rc2_1", "noarch");
