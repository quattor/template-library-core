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

"/software/packages" = pkg_repl("ncm-iscsitarget", "14.4.0-rc3_SNAPSHOT20140507141719", "noarch");
