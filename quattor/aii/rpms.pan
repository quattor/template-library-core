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
# Author(s): Michel Jouvin, Ben Jones, Gabor Gombas, Nick Williams
#

# #
# server, 16.6.0-rc6, rc6_1, Tue Jul 26 2016
#

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages"=pkg_repl("aii-server","16.6.0-rc6_1","noarch");
