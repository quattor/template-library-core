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
# autofs, 16.2.0, 1, 2016-02-19T15:57:52Z
#

unique template components/autofs/config;

include 'components/autofs/schema';
bind "/software/components/autofs" = component_autofs_type;

# Set prefix to root of component configuration.
prefix '/software/components/autofs';
'active' ?= true;
'dispatch' ?= true;
'version' = '16.2.0';
'dependencies/pre' ?= list("spma");

# Package to install
"/software/packages" = pkg_repl("ncm-autofs", "16.2.0-1", "noarch");
