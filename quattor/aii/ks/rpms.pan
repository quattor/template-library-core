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
# ks, 16.12.0, 1, Wed Jan 04 2017
#

# Template adding aii-ks rpm to the configuration

unique template quattor/aii/ks/rpms;

"/software/packages"=pkg_repl("aii-ks","16.12.0-1","noarch");
