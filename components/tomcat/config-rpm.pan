# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Judit Novak <Judit.Novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#




unique template components/tomcat/config-rpm;

include { 'components/tomcat/schema' };

 
# Package to install
"/software/packages" = pkg_repl("ncm-tomcat", "14.4.0-rc3_SNAPSHOT20140507141723", "noarch");


'/software/components/tomcat/version' ?= '14.4.0';

"/software/components/tomcat/dependencies/pre" ?= list("spma");
"/software/components/tomcat/active" ?= false;
"/software/components/tomcat/dispatch" ?= false;

