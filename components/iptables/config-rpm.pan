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


unique template components/iptables/config-rpm;
include { "components/iptables/schema" };

# Package to install.
"/software/packages" = pkg_repl("ncm-iptables", "15.4.0-1", "noarch");


# standard component settings
"/software/components/iptables/active" ?=  true ;
"/software/components/iptables/dispatch" ?=  true ;
#"/software/components/iptables/dependencies/pre" = push("spma");

