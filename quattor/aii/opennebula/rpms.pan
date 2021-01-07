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
# opennebula, 20.12.0-rc1, rc1_1, Thu Jan 07 2021
#

# Template adding ncm-opennebula rpm to the configuration

unique template quattor/aii/opennebula/rpms;

"/software/packages" = pkg_repl("ncm-opennebula", "20.12.0-rc1_1", "noarch");
