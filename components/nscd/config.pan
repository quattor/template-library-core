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
# nscd, 18.12.0-rc0, rc0_1, Thu Dec 13 2018
#

unique template components/nscd/config;

include 'components/nscd/schema';

"/software/packages" = pkg_repl("ncm-nscd", "18.12.0-rc0_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/nscd';

'paranoia' ?= 'yes';
'hosts/positive-time-to-live' ?= 300;
'active' ?= true;
'dispatch' ?= true;
'version' = '18.12.0';
'dependencies/pre' = list('spma');
