# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 


unique template components/ccm/config-rpm;
include {'components/ccm/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-ccm", "14.8.0-rc4_1", "noarch");

'/software/components/ccm/dependencies/pre' ?= list('spma');

'/software/components/ccm/version' ?= '14.8.0';

