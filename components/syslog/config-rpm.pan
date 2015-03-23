# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
#

# 


unique template components/syslog/config-rpm;
include {'components/syslog/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-syslog", "15.2.0-1", "noarch");


"/software/components/syslog/dependencies/pre" ?= list("spma");
"/software/components/syslog/active" ?= true;
"/software/components/syslog/dispatch" ?= true;

