# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Veronique Lefebure <Veronique.Lefebure@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/runlevel/config-rpm;
include {'components/runlevel/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-runlevel", "14.4.0-rc3_SNAPSHOT20140507141720", "noarch");

 
"/software/components/runlevel/dependencies/pre" ?= list("spma");
"/software/components/runlevel/active" ?= true;
"/software/components/runlevel/dispatch" ?= true;
 
