# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


############################################################
#
# type definition components/sendmail
#
#
############################################################
 
unique template components/sendmail/config-rpm;
include { 'components/sendmail/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-sendmail", "14.10.0-rc4_1", "noarch");

 
"/software/components/sendmail/dependencies/pre" ?= list("spma");
"/software/components/sendmail/active" ?= true;
"/software/components/sendmail/dispatch" ?= true;
 
