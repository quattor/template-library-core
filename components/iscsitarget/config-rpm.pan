# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andras Horvath <andras.horvath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/iscsitarget/config-rpm;

include {'components/iscsitarget/schema'};

"/software/components/iscsitarget/active" ?= true;

"/software/packages" = pkg_repl("ncm-iscsitarget", "13.12.0-1", "noarch");
