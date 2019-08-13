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
# opennebula, 18.12.0-rc7, rc7_1, Tue Aug 13 2019
#

# Template adding ncm-opennebula rpm to the configuration

unique template quattor/aii/opennebula/rpms;

"/software/packages" = pkg_repl("ncm-opennebula", "18.12.0-rc7_1", "noarch");
