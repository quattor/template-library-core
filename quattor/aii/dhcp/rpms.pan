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
# dhcp, 21.12.1, 1, Tue Oct 25 2022
#

# Template adding aii-dhcp rpm to the configuration

unique template quattor/aii/dhcp/rpms;

"/software/packages" = pkg_repl("aii-dhcp", "21.12.1-1", "noarch");
