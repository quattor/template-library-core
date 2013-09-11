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
"/software/packages" = pkg_repl("ncm-mailaliases", "13.9.0-1", "noarch");


# standard component settings
"/software/components/mailaliases/active" ?=  true ;
"/software/components/mailaliases/dispatch" ?=  true ;
#"/software/components/mailaliases/dependencies/pre" = push( "spma" );


