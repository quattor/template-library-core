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
# server, 16.12.0, 1, Wed Jan 04 2017
#

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages"=pkg_repl("aii-server","16.12.0-1","noarch");
