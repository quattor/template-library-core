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
# #
# autofs, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/autofs/config;

include 'components/autofs/schema';
bind "/software/components/autofs" = component_autofs_type;

# Set prefix to root of component configuration.
prefix '/software/components/autofs';
'active' ?= true;
'dispatch' ?= true;
'version' = '15.12.0';
'dependencies/pre' ?= list("spma");

# Package to install
"/software/packages" = pkg_repl("ncm-autofs", "15.12.0-rc3_1", "noarch");
