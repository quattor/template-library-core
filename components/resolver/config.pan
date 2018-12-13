# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   njw <njw>
#

# 
# #
# resolver, 18.12.0-rc0, rc0_1, Thu Dec 13 2018
#

unique template components/resolver/config;

include 'components/resolver/schema';
include 'pan/functions';

"/software/packages" = pkg_repl("ncm-resolver", "18.12.0-rc0_1", "noarch");

prefix '/software/components/resolver';

'version' = '18.12.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
