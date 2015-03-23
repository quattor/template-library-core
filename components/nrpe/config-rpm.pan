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

################################################################################
# This is 'TPL/config.tpl', a ncm-nrpe's file
################################################################################
#
#
################################################################################
unique template components/nrpe/config-rpm;
include {'components/nrpe/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-nrpe", "15.2.0-1", "noarch");

"/software/components/nrpe/dependencies/pre" ?=  list ("spma");

"/software/components/nrpe/active" ?= true;
"/software/components/nrpe/dispatch" ?= true;

