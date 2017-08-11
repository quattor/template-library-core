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
# afsclt, 17.7.0, 1, Fri Aug 11 2017
#

unique template components/afsclt/config;

include 'components/afsclt/schema';

"/software/packages" = pkg_repl("ncm-afsclt", "17.7.0-1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

'version' = '17.7.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
