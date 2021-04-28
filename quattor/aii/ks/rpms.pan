# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Michel Jouvin, Gabor Gombas, Ben Jones
#

# #
# ks, 21.4.0-rc1, rc1_1, Wed Apr 28 2021
#

# Template adding aii-ks rpm to the configuration

unique template quattor/aii/ks/rpms;

"/software/packages" = pkg_repl("aii-ks", "21.4.0-rc1_1", "noarch");
