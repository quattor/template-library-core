# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Christos Triantafyllidis <ctria@grid.auth.gr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


unique template components/pakiti/config-rpm;


include {'components/pakiti/schema'};

# Package to install.
"/software/packages" = pkg_repl("ncm-pakiti", "14.4.0-rc3_SNAPSHOT20140507141710", "noarch");


# standard component settings
"/software/components/pakiti/active" ?=  true ;
"/software/components/pakiti/dispatch" ?=  true ;
