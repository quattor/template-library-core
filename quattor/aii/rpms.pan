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
# server, 18.12.0-rc9, rc9_1, Tue Jan 21 2020
#

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages" = pkg_repl("aii-server", "18.12.0-rc9_1", "noarch");
