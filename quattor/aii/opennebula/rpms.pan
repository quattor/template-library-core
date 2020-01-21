# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#

# 
# #
# opennebula, 19.12.0-rc2, rc2_1, Tue Jan 21 2020
#

# Template adding ncm-opennebula rpm to the configuration

unique template quattor/aii/opennebula/rpms;

"/software/packages" = pkg_repl("ncm-opennebula", "19.12.0-rc2_1", "noarch");
