# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan.Iven@cern.ch <Jan.Iven@cern.ch>
#

# 
# #
# nscd, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/nscd/config;

include 'components/nscd/schema';

"/software/packages" = pkg_repl("ncm-nscd", "16.2.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/nscd';

'paranoia' ?= 'yes';
'hosts/positive-time-to-live' ?= 300;
'active' ?= true;
'dispatch' ?= true;
'version' = '16.2.0';
'dependencies/pre' = list('spma');
