# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#   Stijn De Weirdt <Stijn.DeWeirdt@UGent.be>
#

# 
# #
# aii-opennebula, 16.2.0-rc4-SNAPSHOT, rc4_SNAPSHOT20160219150415, 2016-02-19T15:04:15Z
#

# Template adding aii-opennebula rpm to the configuration

unique template quattor/aii/opennebula/rpms;

"/software/packages"=pkg_repl("aii-opennebula","16.2.0-rc4_SNAPSHOT20160219150415","noarch");
