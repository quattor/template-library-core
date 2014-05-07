# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Benjamin Chardi <Benjamin.Chardi.Marco@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/sysctl/config-rpm;

include { 'components/sysctl/schema' };


# Package to install
"/software/packages" = pkg_repl("ncm-sysctl", "14.4.0-rc3_SNAPSHOT20140507141730", "noarch");

 
"/software/components/sysctl/dependencies/pre" ?= list("spma");
"/software/components/sysctl/active" ?= true;
"/software/components/sysctl/dispatch" ?= true;
 
