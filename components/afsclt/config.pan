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
# afsclt, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/afsclt/config;

include 'components/afsclt/schema';

"/software/packages" = pkg_repl("ncm-afsclt", "23.9.0-rc1_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

'version' = '23.9.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
