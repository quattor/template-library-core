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
# pxelinux, 23.6.0-rc3, rc3_1, Tue Aug 08 2023
#

# Template adding aii-pxelinux rpm to the configuration

unique template quattor/aii/pxelinux/rpms;

"/software/packages" = pkg_repl("aii-pxelinux", "23.6.0-rc3_1", "noarch");
