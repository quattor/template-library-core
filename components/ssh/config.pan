# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# 
# #
# ssh, 16.12.0-rc2, rc2_1, Thu Dec 15 2016
#

unique template components/ssh/config;

include 'components/ssh/schema';

"/software/packages" = pkg_repl("ncm-ssh", "16.12.0-rc2_1", "noarch");

prefix '/software/components/ssh';
'dependencies/pre' ?= list("spma");
'active' ?= true;
'dispatch' ?= true;
'version' ?= '16.12.0';
