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



unique template components/mailaliases/config-rpm;

include {'components/mailaliases/schema'};

# Package to install.
"/software/packages" = pkg_repl("ncm-mailaliases", "14.4.0-rc3_SNAPSHOT20140507141707", "noarch");


# standard component settings
"/software/components/mailaliases/active" ?=  true ;
"/software/components/mailaliases/dispatch" ?=  true ;
#"/software/components/mailaliases/dependencies/pre" = push( "spma" );


