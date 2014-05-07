# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stephen Childs (childss@cs.tcd.ie) <Stephen Childs (childss@cs.tcd.ie)>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/xen/config-rpm;

include { "components/xen/schema" };

# Package to install.
"/software/packages" = pkg_repl("ncm-xen", "14.4.0-rc3_SNAPSHOT20140507141721", "noarch");


# standard component settings
"/software/components/xen/dependencies/pre" = list("spma");
"/software/components/xen/active" ?=  true ;
"/software/components/xen/dispatch" ?=  true ;
"/software/components/xen/register_change/0" = "/software/components/xen";



