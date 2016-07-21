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
# resolver, 16.6.0-rc5, rc5_1, Thu Jul 21 2016
#

unique template components/resolver/config;

include 'components/resolver/schema';
include 'pan/functions';

"/software/packages" = pkg_repl("ncm-resolver", "16.6.0-rc5_1", "noarch");

prefix '/software/components/resolver';

'version' = '16.6.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
