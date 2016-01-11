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
# nscd, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/nscd/config;

include 'components/nscd/schema';

"/software/packages" = pkg_repl("ncm-nscd", "15.12.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/nscd';

'paranoia' ?= 'yes';
'hosts/positive-time-to-live' ?= 300;
'active' ?= true;
'dispatch' ?= true;
'version' = '15.12.0';
'dependencies/pre' = list('spma');
