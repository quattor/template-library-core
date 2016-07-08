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
# afsclt, 16.6.0-rc3, rc3_1, Fri Jul 08 2016
#

unique template components/afsclt/config;

include 'components/afsclt/schema';

"/software/packages" = pkg_repl("ncm-afsclt", "16.6.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

'version' = '16.6.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
