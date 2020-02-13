# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Joao Martins <alasdair.earl@cern.ch>
#

# 
# #
# iptables, 19.12.0, 1, Thu Feb 13 2020
#

unique template components/iptables/config;

include "components/iptables/schema";

# Package to install.
"/software/packages" = pkg_repl("ncm-iptables", "19.12.0-1", "noarch");

prefix '/software/components/iptables';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = append("spma");
