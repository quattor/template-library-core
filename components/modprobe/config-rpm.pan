# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Hugo Cacote <Hugo.Cacote@cern.ch>
#

# 


unique template components/modprobe/config-rpm;
include { 'components/modprobe/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-modprobe", "15.4.0-1", "noarch");


"/software/components/modprobe/dependencies/pre" ?= list("spma");
"/software/components/modprobe/active" ?= true;
"/software/components/modprobe/dispatch" ?= true;

# Example for module <foo>
#"/software/components/modprobe/modules/1/name" = "foo";

