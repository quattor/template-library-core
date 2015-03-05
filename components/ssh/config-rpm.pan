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


unique template components/ssh/config-rpm;

include { 'components/ssh/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-ssh", "14.10.1-SNAPSHOT20150305103429", "noarch");


'/software/components/ssh/version' ?= '14.10.1';

"/software/components/ssh/dependencies/pre" ?= list("spma");
"/software/components/ssh/active" ?= true;
"/software/components/ssh/dispatch" ?= true;
