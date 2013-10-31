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
"/software/packages" = pkg_repl("ncm-ccm", "13.1.2-1", "noarch");

'/software/components/ccm/dependencies/pre' ?= list('spma');

'/software/components/ccm/version' ?= '13.1.2';

