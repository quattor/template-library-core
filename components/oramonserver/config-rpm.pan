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



unique template components/oramonserver/config-rpm;

include {'components/oramonserver/schema'};

# Package to install.
"/software/packages" = pkg_repl("ncm-oramonserver", "14.4.0-rc3_SNAPSHOT20140507141721", "noarch");


# standard component settings
"/software/components/oramonserver/dependencies/pre" = list("spma");
"/software/components/oramonserver/active" ?=  true ;
"/software/components/oramonserver/dispatch" ?=  true ;
"/software/components/oramonserver/register_change/0" = "/software/components/oramonserver";



