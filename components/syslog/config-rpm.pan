# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/syslog/config-rpm;
include {'components/syslog/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-syslog", "14.8.0-rc5_SNAPSHOT20140904163507", "noarch");


"/software/components/syslog/dependencies/pre" ?= list("spma");
"/software/components/syslog/active" ?= true;
"/software/components/syslog/dispatch" ?= true;

