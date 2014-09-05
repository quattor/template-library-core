# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/ssh/config-rpm;

include { 'components/ssh/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-ssh", "14.8.0-rc5_1", "noarch");


'/software/components/ssh/version' ?= '14.8.0';

"/software/components/ssh/dependencies/pre" ?= list("spma");
"/software/components/ssh/active" ?= true;
"/software/components/ssh/dispatch" ?= true;
