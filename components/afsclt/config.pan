# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#   Alan Fitton <Alan.Fitton@morganstanley.com>
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 
# #
# afsclt, 24.10.0, 1, Fri Nov 22 2024
#

unique template components/afsclt/config;

include 'components/afsclt/schema';

"/software/packages" = pkg_repl("ncm-afsclt", "24.10.0-1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

'version' = '24.10.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
