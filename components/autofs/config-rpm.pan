# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# 

############################################################
#
# type definition components/autofs
#
#
#
############################################################

unique template components/autofs/config-rpm;
include { 'components/autofs/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-autofs", "15.4.0-1", "noarch");


'/software/components/autofs/version' = '15.4.0';

"/software/components/autofs/dependencies/pre" ?= list("spma");
"/software/components/autofs/active" ?= true;
"/software/components/autofs/dispatch" ?= true;

