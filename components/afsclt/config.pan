# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#   Alan Fitton <Alan.Fitton@morganstanley.com>
#

# 
# #
# afsclt, 16.2.0, 1, 2016-02-19T15:57:52Z
#

unique template components/afsclt/config;

include 'components/afsclt/schema';

"/software/packages" = pkg_repl("ncm-afsclt", "16.2.0-1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

'version' = '16.2.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
