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
# resolver, 21.4.0, 1, Fri May 14 2021
#

unique template components/resolver/config;

include 'components/resolver/schema';
include 'pan/functions';

"/software/packages" = pkg_repl("ncm-resolver", "21.4.0-1", "noarch");

prefix '/software/components/resolver';

'version' = '21.4.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
