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
# server, 17.8.0, 1, Mon Oct 23 2017
#

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages" = pkg_repl("aii-server", "17.8.0-1", "noarch");
