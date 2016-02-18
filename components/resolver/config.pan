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
# resolver, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/resolver/config;

include 'components/resolver/schema';
include 'pan/functions';

"/software/packages" = pkg_repl("ncm-resolver", "16.2.0-rc3_1", "noarch");

prefix '/software/components/resolver';

'version' = '16.2.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
