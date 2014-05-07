# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/ntpd/config-rpm;
include { 'components/ntpd/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-ntpd", "14.4.0-rc3_SNAPSHOT20140507141723", "noarch");


'/software/components/ntpd/version' ?= '14.4.0';

"/software/components/ntpd/dependencies/pre" ?= list("spma");
"/software/components/ntpd/active" ?= true;
"/software/components/ntpd/dispatch" ?= true;
