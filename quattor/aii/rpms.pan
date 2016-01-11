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
# server, 15.12.0-rc3, rc3_1, 2016-01-11T13:51:05Z
#

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages"=pkg_repl("aii-server","15.12.0-rc3_1","noarch");
