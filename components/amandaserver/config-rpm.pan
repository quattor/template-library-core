# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Laura del Caño Novales <laura.delcano@ft.uam.es>
#

# 

################################################################################
# This is 'TPL/config.tpl', a ncm-amandaserver's file
################################################################################
#
#
################################################################################
unique template components/amandaserver/config-rpm;
include {'components/amandaserver/schema'};


# Package to install
"/software/packages" = pkg_repl("ncm-amandaserver", "15.2.0-1", "noarch");

"/software/components/amandaserver/dependencies/pre" ?=  list ("spma");

"/software/components/amandaserver/active" ?= true;
"/software/components/amandaserver/dispatch" ?= true;
