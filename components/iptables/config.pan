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
# iptables, 16.6.0-rc5, rc5_1, Thu Jul 21 2016
#

unique template components/iptables/config;

include "components/iptables/schema";

# Package to install.
"/software/packages" = pkg_repl("ncm-iptables", "16.6.0-rc5_1", "noarch");

prefix '/software/components/iptables';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = append("spma");
