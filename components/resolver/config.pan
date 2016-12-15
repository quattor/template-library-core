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
# resolver, 16.12.0-rc2, rc2_1, Thu Dec 15 2016
#

unique template components/resolver/config;

include 'components/resolver/schema';
include 'pan/functions';

"/software/packages" = pkg_repl("ncm-resolver", "16.12.0-rc2_1", "noarch");

prefix '/software/components/resolver';

'version' = '16.12.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
